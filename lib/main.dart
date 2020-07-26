import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medita_app/screens/happymind_screen/happymind_screen.dart';
import 'package:medita_app/screens/meditation_screen/meditation_screen.dart';
import 'package:medita_app/screens/meditation_screen/silentmeditation_list.dart';
import 'package:medita_app/screens/relaxation/relaxation_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> _pages = [
    MeditationScreen(),
    HappyMindScreen(),
    RelaxationScreen(),
  ];

  int _currentIndex = 0;

  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // '/': (_) => MeditationScreen(),
        '/SilentList': (context) => SilentMeditationList(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: _pages[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: _onTapped,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              fixedColor: Color(0xff283182),
              elevation: 10,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("lib/assets/images/meditation.svg"),
                    title: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text("Meditation"),
                    )),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("lib/assets/images/happymind.svg"),
                    title: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text("Happy Mind"),
                    )),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset("lib/assets/images/relax.svg"),
                    title: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text("Relaxation"),
                    )),
              ])),
    );
  }
}
