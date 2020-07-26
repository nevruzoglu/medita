import 'package:flutter/material.dart';
import 'package:medita_app/screens/meditation_screen/silentmeditation_list.dart';
import 'package:medita_app/shared/constants.dart';

class MeditationCard extends StatelessWidget {
  const MeditationCard(
      {Key key, @required this.title, @required this.image, this.route});

  final String title;
  final String image;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openDetailsPage(context),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 15,
        shadowColor: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(image,
                    fit: BoxFit.fill, width: ScreenSize.width),
              ),
              Text(
                "\n$title",
                style: kCardText,
              )
            ],
          ),
        ),
      ),
    );
  }

  _openDetailsPage(BuildContext context) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => SilentMeditationList()));
}
