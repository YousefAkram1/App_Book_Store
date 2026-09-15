import 'package:url_launcher/url_launcher.dart';

void launchUrlMethod({required String url}) async {
  final urlToLaunch = Uri.parse(url);

  if (await canLaunchUrl(urlToLaunch)) {
    await launchUrl(urlToLaunch, mode: LaunchMode.externalApplication);
  }
}
