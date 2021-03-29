import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ExampleHomePage(),
    );
  }
}

class ExampleHomePage extends StatefulWidget {
  @override
  _ExampleHomePageState createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHomePage> with TickerProviderStateMixin {
  List<String> welcomeImages = [
    "Hello",
    "Hello2",
    "Hello3",
    "Hello4",
    "Hello5",
    "Hello6",
    "Hello7",
  ];

  @override
  Widget build(BuildContext context) {
    CardController controller;

    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'The truth game',
          style: TextStyle(color: Colors.redAccent),
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: 6,
            stackNum: 4,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardBuilder: (context, index) => Card(
              child: Center(
                  child: Text(
                '${welcomeImages[index]}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
            cardController: controller = CardController(),
            swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
              if (align.x < 0) {
              } else if (align.x > 0) {}
            },
            swipeCompleteCallback: (CardSwipeOrientation orientaion, int index) {},
          )),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.white,
        height: 70.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30.0,
            color: Colors.redAccent,
          ),
          Icon(
            Icons.chat_bubble,
            size: 30.0,
            color: Colors.redAccent,
          ),
          Icon(
            FontAwesomeIcons.heart,
            size: 30.0,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
