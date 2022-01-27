import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:hask/helpers/debounce_executable.dart';
import 'package:hask/models/discover_post.dart';
import 'package:hask/providers/discover_post_search_provider.dart';

part 'discover_search_state.dart';

class DiscoverSearchCubit extends Cubit<DiscoverSearchState>
    with DebounceExecutable {
  DiscoverSearchCubit() : super(DiscoverSearchInitial());

  final _discoverSeachPostProvider = DiscoverPostSearchProvider();

  List<DiscoverPost> get posts => _discoverSeachPostProvider.items;

  String _query = '';

  bool get isQueryNotEmpy => _query.isNotEmpty;

  final throttler = Throttler(throttleGapInMillis: 1000);

  setQuery(String query) {
    _query = query;
    _discoverSeachPostProvider.reset();
    _discoverSeachPostProvider.query = _query;
    if (query.isEmpty) {
      emit(DiscoverSearchInitial());
      return;
    }
    throttler.run(() {
      search();
    });
    /*
    debounce(
      name: 'setQuery',
      execute: () {
        search();
      },
    );*/
  }

  search() async {
    emit(DiscoverSearchInProgress());
    try {
      await _discoverSeachPostProvider.load();
      emit(DiscoverSearchSuccess());
    } catch (e) {
      emit(DiscoverSearchFailed(error: e.toString()));
    }
  }

  loadMore() async {
    if (!_discoverSeachPostProvider.isCanLoadMore()) {
      return;
    }
    debounce(
      name: 'DiscoverSearchCubit',
      execute: () async {
        try {
          await _discoverSeachPostProvider.loadMore();
          emit(DiscoverSearchSuccess());
        } catch (e) {
          emit(DiscoverSearchFailed(error: e.toString()));
        }
      },
    );
  }
}

class Throttler {
  Throttler({required this.throttleGapInMillis});

  final int throttleGapInMillis;

  int? lastActionTime;

  void run(VoidCallback action) {
    if (lastActionTime == null) {
      action();
      lastActionTime = DateTime.now().millisecondsSinceEpoch;
    } else {
      if (DateTime.now().millisecondsSinceEpoch - (lastActionTime ?? 0) >
          (throttleGapInMillis)) {
        action();
        lastActionTime = DateTime.now().millisecondsSinceEpoch;
      }
    }
  }
}

class Throttling extends Stream<bool> implements Sink<Function> {
  Duration _duration;

  /// Get current duration
  Duration get duration => _duration;

  /// Set new duration
  set duration(Duration value) {
    // ignore: unnecessary_type_check
    assert(duration is Duration && !duration.isNegative);
    _duration = value;
  }

  bool _isReady = true;

  /// is ready
  bool get isReady => _isReady;
  Future<void> get _waiter => Future.delayed(_duration);
  // ignore: close_sinks
  final StreamController<bool> _stateSC = StreamController<bool>.broadcast();

  /// Throttling
  /// Have method [throttle]
  /// Must be closed with [close] method
  Throttling({Duration duration = const Duration(seconds: 1)})
      // ignore: unnecessary_type_check
      : assert(duration is Duration && !duration.isNegative),
        _duration = duration {
    _stateSC.sink.add(true);
  }

  /// limits the maximum number of times a given
  /// event handler can be called over time
  dynamic throttle(Function func) {
    if (!_isReady) return null;
    _stateSC.sink.add(false);
    _isReady = false;
    _waiter.then((_) {
      _isReady = true;
      if (!_stateSC.isClosed) {
        _stateSC.sink.add(true);
      }
    });
    return Function.apply(func, []);
  }

  @override
  StreamSubscription<bool> listen(
    void Function(bool event)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) =>
      _stateSC.stream.listen(
        onData,
        onError: onError,
        onDone: onDone,
        cancelOnError: cancelOnError,
      );

  /// Closing instances of Sink prevents
  /// memory leaks and unexpected behavior.
  @Deprecated('Use [close] instead')
  void dispose() => close();

  /// Shortcut for [throttle] method
  @override
  dynamic add(Function data) => throttle(data);

  @override
  Future<void> close() => _stateSC.close();
}
