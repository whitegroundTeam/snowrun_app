import 'package:url_launcher/url_launcher.dart';

Future<void> launchExternalUrl(String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw Exception('잘못된 주소입니다. $uri');
  }
}
