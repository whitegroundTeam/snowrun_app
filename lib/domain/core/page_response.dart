import 'package:snowrun_app/domain/core/value_objects.dart';

class PageResponse<T> {
  ListVO<T> contents;
  int count;

  PageResponse({
    required this.contents,
    required this.count,
  });

  factory PageResponse.empty() => PageResponse(
        contents: ListVO.empty(),
        count: 0,
      );
}
