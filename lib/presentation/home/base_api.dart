
class BaseApi {
  static String base = "http://localhost:3000";
  static var api = "$base/api/v1";
  var customersPath = "$api/customers";
  var authPath = "$api/auth";

  Map<String, String> headrs = {
    "Content-Type": "application/json; charset=UTF-8"
  };
}