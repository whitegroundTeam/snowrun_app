// usecase : final enum = AuthMethod.findByName(stringValue);
enum AuthMethod {
  undefined("UNDEFINED"),
  email("EMAIL"),
  apple("APPLE"),
  google("GOOGLE"),
  ;
const AuthMethod(this.description);
  final String description;
  static AuthMethod findByName({String? name}) {
    const defaultValue = AuthMethod.undefined;
    if (name == null) {
      return defaultValue;
    }
    return AuthMethod.values.firstWhere((element) =>
    element.name.toUpperCase() == name.toUpperCase(), orElse: () => defaultValue);
  }
}