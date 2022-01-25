import 'package:bloc/bloc.dart';
import 'package:hask/api/services/discover_api_service.dart';
import 'package:hask/models/discover_category_response.dart';
import 'package:meta/meta.dart';

part 'discover_state.dart';

class DiscoverCubit extends Cubit<DiscoverState> {
  DiscoverCubit() : super(DiscoverInitial());

  final _service = DiscoverApiService.create();

  loaData() async {
    emit(DiscoverInProgress());
    try {
      final response = await _service.getCategories();
      final error = response.error;
      if (error != null) {
        emit(DiscoverFailed(error: error.toString()));
        return;
      }
      emit(DiscoverSuccess(response: response.body!));
    } catch (e) {
      emit(DiscoverFailed(error: e.toString()));
    }
  }
}
