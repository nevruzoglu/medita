import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medita_app/shared/constants.dart';

void main() => runApp(DeepMeditationPlayer());

class DeepMeditationPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: ScreenSize.height * .1),
            CircleAvatar(
              backgroundImage: AssetImage("lib/assets/images/Rectangle-1.jpg"),
              radius: ScreenSize.height * .13,
            ),
            SizedBox(height: ScreenSize.height * .08),
            Text(
              "20 Minutes \nDeep Meditation",
              style: kHeadline1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: ScreenSize.height * .08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SvgPicture.asset("lib/assets/images/forward-30-1.svg"),
                SvgPicture.asset("lib/assets/images/play.svg"),
                SvgPicture.asset("lib/assets/images/forward-30.svg"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
