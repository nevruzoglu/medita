import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medita_app/shared/constants.dart';

void main() => runApp(DeepMeditationPlayer());

class DeepMeditationPlayer extends StatefulWidget {
  @override
  _DeepMeditationPlayerState createState() => _DeepMeditationPlayerState();
}

class _DeepMeditationPlayerState extends State<DeepMeditationPlayer> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    var duration = 10.0;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: ScreenSize.height * .1),
              Container(
                  height: ScreenSize.width * .5,
                  width: ScreenSize.width * .5,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 18,
                          offset: Offset(0, 18),
                          color: Color(0x20334454),
                        )
                      ],
                      image: DecorationImage(
                          image:
                              AssetImage("lib/assets/images/Rectangle-3.jpg"),
                          fit: BoxFit.fill),
                      shape: BoxShape.circle)),
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
              SizedBox(height: ScreenSize.height * .08),
              Stack(
                children: <Widget>[
                  SvgPicture.asset("lib/assets/images/waves.svg"),
                  SliderTheme(
                    data: SliderThemeData(
                        trackHeight: 6, activeTrackColor: Colors.blue),
                    child: Slider(
                        value: duration,
                        min: 0,
                        max: 100,
                        onChanged: (newDuration) {
                          setState(() {
                            duration = newDuration;
                          });
                        }),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
