import 'package:flutter/material.dart';
import 'package:medita_app/screens/meditation_screen/deepmeditation_payer.dart';

import 'constants.dart';

class ListCardWidget extends StatelessWidget {
  const ListCardWidget({
    Key key,
    @required this.title,
    @required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openDetailsPage(context),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 15,
          shadowColor: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              children: <Widget>[
                Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    child: Image.asset(image,
                        fit: BoxFit.fill,
                        width: ScreenSize.width * .2,
                        height: ScreenSize.width * .2 // to make square ,
                        ),
                  ),
                  Positioned.fill(
                    child: Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: ScreenSize.width * .09,
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    title,
                    style: kCardText,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _openDetailsPage(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => DeepMeditationPlayer()));
}
