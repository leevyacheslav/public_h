import 'package:bloc/bloc.dart';
import 'package:hask/api/services/discover_api_service.dart';
import 'package:hask/models/discover_popular__search_request.dart';
import 'package:meta/meta.dart';

part 'discover_root_state.dart';

class DiscoverRootCubit extends Cubit<DiscoverRootState> {
  DiscoverRootCubit() : super(DiscoverRootInitial());

  List<DiscoverPopularSearchRequest> requests = [];

  final _service = DiscoverApiService.create();

  loadRequests() async {
    try {
      final response = await _service.getPopularRequests();
      final body = response.body;
      if (body != null) {
        requests = body.toList();
      }
      // ignore: empty_catches
    } catch (e) {}
  }
}
