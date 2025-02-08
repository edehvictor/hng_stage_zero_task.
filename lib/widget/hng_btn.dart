import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HngBtn extends StatelessWidget {
  const HngBtn({super.key});
  final String repoUrl = "http://hng.tech/hire/flutter-developers";

  Future<void> _launchRepoUrl() async {
    Uri url = Uri.parse(repoUrl);
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "could not launch $repoUrl";
    }
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: _launchRepoUrl,
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
            backgroundColor: const Color.fromARGB(221, 37, 36, 36),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        label: Text(
          "Continue with HNG",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ));
  }
}
