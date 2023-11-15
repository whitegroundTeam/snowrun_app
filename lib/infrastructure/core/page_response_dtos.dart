import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class PageResponseDto<T> {
  List<T> contents;
  int count;

  PageResponseDto({
    required this.contents,
    required this.count,
  });

  factory PageResponseDto.fromHttpResponse(
      http.Response response, Function1<Map<String, dynamic>, T> generateObject,
      {String? contentsCustomKey}) {
    final decoded = json.decode(utf8.decode(response.bodyBytes));

    final List<T> objectList = (decoded[contentsCustomKey?.isNotEmpty == true
            ? "$contentsCustomKey"
            : "results"] as Iterable)
        .map((e) => generateObject.call(e as Map<String, dynamic>))
        .toList();

    final count = decoded['count'] as int;

    return PageResponseDto(contents: objectList, count: count);
  }
}
