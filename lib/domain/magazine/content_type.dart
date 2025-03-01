enum ContentType {
  title,
  description,
  image,
  button,
  unknown, // 서버에서 알 수 없는 타입 처리용
}

extension ContentTypeExtension on ContentType {
  String toValue() {
    switch (this) {
      case ContentType.title:
        return "title content";
      case ContentType.description:
        return "description content";
      case ContentType.image:
        return "image content";
      case ContentType.button:
        return "button content";
      default:
        return "unknown";
    }
  }

  static ContentType fromValue(String value) {
    switch (value) {
      case "title content":
        return ContentType.title;
      case "description content":
        return ContentType.description;
      case "image content":
        return ContentType.image;
      case "button content":
        return ContentType.button;
      default:
        return ContentType.unknown;
    }
  }
}