import 'package:flutter_dotenv/flutter_dotenv.dart';

String getShareRidingRoomLink(int ridingRoomId) {
  String shareLinkHost = dotenv.env['APP_URL_HOST'] ?? "";
  if(shareLinkHost.isNotEmpty) {
    return "https://$shareLinkHost/#/ridingRoom?roomNumber=$ridingRoomId";
  } else{
    return "";
  }
}