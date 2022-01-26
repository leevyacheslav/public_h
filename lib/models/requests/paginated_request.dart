import 'package:hask/extensions/map_safe_add.dart';

class PaginatedRequest {
  int limit;
  int page;

  PaginatedRequest({this.limit = 16, this.page = 1});

  factory PaginatedRequest.fromJson(Map<String, dynamic> json) =>
      PaginatedRequest(limit: json['limit'], page: json['page']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data.addSafe('limit', limit);
    data.addSafe('page', page);
    return data;
  }

  PaginatedRequest copy() => PaginatedRequest.fromJson(toJson());

  resetPagination() {
    page = 1;
  }

  next() {
    page += 1;
  }
}
