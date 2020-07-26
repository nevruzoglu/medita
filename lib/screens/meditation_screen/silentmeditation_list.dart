import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:medita_app/shared/constants.dart';
import 'package:medita_app/shared/listcard_widget.dart';

void main() => runApp(SilentMeditationList());

class SilentMeditationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      body: Stack(children: <Widget>[
        SvgPicture.asset("lib/assets/images/Frame27.svg",
            width: ScreenSize.width, color: Color(0xffFFF0E1)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: ScreenSize.height * .08),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                "Focused Meditation",
                style: kHeadline1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 12),
              child: Text(
                "The fundamental premise of Focused meditation is acceptance",
                style: kCardText,
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListCardWidget(
                    image: "lib/assets/images/Rectangle.jpg",
                    title: "Weekend Reset",
                  ),
                  ListCardWidget(
                    image: "lib/assets/images/Rectangle-1.jpg",
                    title: "Release Stress",
                  ),
                  ListCardWidget(
                    image: "lib/assets/images/Rectangle-2.jpg",
                    title: "Badtime Imaginary",
                  ),
                  ListCardWidget(
                    image: "lib/assets/images/Rectangle-3.jpg",
                    title: "Self Love",
                  ),
                  ListCardWidget(
                    image: "lib/assets/images/Rectangle-4.jpg",
                    title: "Enjoy Your Life",
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
