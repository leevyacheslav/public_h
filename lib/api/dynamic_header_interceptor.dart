import 'dart:async';

import 'package:chopper/chopper.dart';

class DynamicHeaderInterceptor extends RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    return request.copyWith(headers: {'X-localization': 'en'});
  }
}
