import 'package:flutter/material.dart';
import 'package:hng_track_zero/widget/github_btn.dart';
import 'package:hng_track_zero/widget/hng_btn.dart';

class HngStarter extends StatelessWidget {
  const HngStarter({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "HNG12",
          style: TextStyle(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nomso, welcome to HNG12",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "You're the real MVP!, start-up and finish as a finalist.",
              style: TextStyle(fontSize: 14),
            ),
            Image(
              image: AssetImage(
                'assets/images/hotballon.png',
              ),
              width: 500,
            ),
            const SizedBox(
              height: 10,
            ),
            GithubBtn(),
            SizedBox(
              height: 5,
            ),
            HngBtn(),
          ],
        ),
      ),
    );
  }
}
