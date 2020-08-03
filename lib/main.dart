import 'package:custom_navigator/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medita_app/screens/happymind_screen/happymind_screen.dart';
import 'package:medita_app/screens/meditation_screen/meditation_screen.dart';
import 'package:medita_app/screens/relaxation/relaxation_screen.dart';

void main() => runApp(MyApp());

//give a navigator key to [MaterialApp] if you want to use the default navigation
//anywhere in your app eg: line 15 & line 93
GlobalKey<NavigatorState> mainNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: mainNavigatorKey,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Custom navigator takes a global key if you want to access the
  // navigator from outside it's widget tree subtree
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    // Here's the custom scaffold widget
    // It takes a normal scaffold with mandatory bottom navigation bar
    // and children who are your pages
    return CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 12,
          unselectedFontSize: 12,
          elevation: 10,
          items: _items,
        ),
      ),

      // Children are the pages that will be shown by every click
      // They should placed in order such as
      // `page 0` will be presented when `item 0` in the [BottomNavigationBar] clicked.
      children: <Widget>[
        MeditationScreen(),
        HappyMindScreen(),
        RelaxationScreen(),
      ],

      // Called when one of the [items] is tapped.
      onItemTap: (index) {},
    );
  }

  final _items = [
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
  ];
}
