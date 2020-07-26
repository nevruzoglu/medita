import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medita_app/shared/constants.dart';

import '../../shared/card_widget.dart';

class HappyMindScreen extends StatelessWidget {
  const HappyMindScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            "lib/assets/images/Frame27.svg",
            width: ScreenSize.width,
            color: Colors.yellow.shade200,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: ScreenSize.height * .07),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Make your mind \nHappy",
                  style: kHeadline1,
                ),
              ),
              SizedBox(height: ScreenSize.height * .01),
              Expanded(
                child: Container(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    padding: EdgeInsets.all(16),
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: <Widget>[
                      MeditationCard(
                        title: "Happy Mind",
                        image: "lib/assets/images/Rectangle-5.jpg",
                      ),
                      MeditationCard(
                        title: "Mind Peace",
                        image: "lib/assets/images/Rectangle-4.jpg",
                      ),
                      MeditationCard(
                        title: "Deep Dive to Mind",
                        image: "lib/assets/images/Rectangle-3.jpg",
                      ),
                      MeditationCard(
                        title: "Selected Memory",
                        image: "lib/assets/images/Rectangle-2.jpg",
                      ),
                      MeditationCard(
                        title: "Thinking Nothing",
                        image: "lib/assets/images/Rectangle-1.jpg",
                      ),
                      MeditationCard(
                        title: "Emptyness",
                        image: "lib/assets/images/Rectangle.jpg",
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
