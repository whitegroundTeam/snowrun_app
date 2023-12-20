import 'package:dartz/dartz.dart';
import 'package:snowrun_app/domain/core/failures.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_media.freezed.dart';

@freezed
class ContentMedia with _$ContentMedia {
  const ContentMedia._();

  const factory ContentMedia({
    required StringVO url,
    required MediaKind mediaKind,
  }) = _ContentMedia;

  factory ContentMedia.empty() => ContentMedia(
        url: StringVO(""),
        mediaKind: MediaKind.undefined,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return url.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}

enum MediaKind {
  undefined("UNDEFINED"),
  image("IMAGE"),
  video("VIDEO"),
  lottie("LOTTIE"),
  ;

  const MediaKind(this.description);

  final String description;

  static MediaKind findByName({String? name}) {
    const defaultValue = MediaKind.undefined;
    if (name == null) {
      return defaultValue;
    }
    return MediaKind.values.firstWhere(
        (element) => element.description.toUpperCase() == name.toUpperCase(),
        orElse: () => defaultValue);
  }
}
