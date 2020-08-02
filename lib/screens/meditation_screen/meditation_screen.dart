import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medita_app/screens/meditation_screen/silentmeditation_list.dart';
import 'package:medita_app/shared/constants.dart';

import '../../shared/card_widget.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context); // instantiate screensize object

    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            "lib/assets/images/Frame27.svg",
            width: ScreenSize.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: ScreenSize.height * .07),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Welcome back \nBurak",
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
                        title: "Zazen Meditation",
                        image: "lib/assets/images/Rectangle.jpg",
                        route: SilentMeditationList(),
                      ),
                      MeditationCard(
                        title: "Qigong Meditation",
                        image: "lib/assets/images/Rectangle-1.jpg",
                      ),
                      MeditationCard(
                        title: "Silent Meditations",
                        image: "lib/assets/images/Rectangle-2.jpg",
                      ),
                      MeditationCard(
                        title: "Silent Meditations",
                        image: "lib/assets/images/Rectangle-3.jpg",
                      ),
                      MeditationCard(
                        title: "Silent Meditations",
                        image: "lib/assets/images/Rectangle-4.jpg",
                      ),
                      MeditationCard(
                        title: "Silent Meditations",
                        image: "lib/assets/images/Rectangle-5.jpg",
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
