import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubBtn extends StatelessWidget {
  const GithubBtn({super.key});

  final String repoUrl = "https://github.com/edehvictor/hng_stage_zero";

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
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        label: Text(
          "Continue With GitHub",
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ));
  }
}
