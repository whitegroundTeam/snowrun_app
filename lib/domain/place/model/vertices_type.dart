// usecase : final enum = VerticesType.findByName(stringValue);
enum VerticesType {
  polygon("Polygon"),
  ;
  const VerticesType(this.description);
  final String description;
  static VerticesType findByName({String? name}) {
    const defaultValue = VerticesType.polygon;
    if (name == null) {
      return defaultValue;
    }
    return VerticesType.values.firstWhere((element) =>
    element.description.toUpperCase() == name.toUpperCase(), orElse: () => defaultValue);
  }
}