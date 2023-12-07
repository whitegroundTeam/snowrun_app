import 'package:flutter_dotenv/flutter_dotenv.dart';

String getShareRidingRoomLink(int ridingRoomId) {
  const shareLinkHost = "snowrun.app";
  if(shareLinkHost.isNotEmpty) {
    return "https://$shareLinkHost/#/riding/$ridingRoomId";
  } else{
    return "";
  }
}