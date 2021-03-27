import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:flutter/cupertino.dart';



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

class _ExampleHomePageState extends State<ExampleHomePage>
    with TickerProviderStateMixin {
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
    CardController controller; //Use this to trigger swap.

    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Tinder like CARDS',style: TextStyle(color: Colors.redAccent),),
      ),
      body:  Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child:TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: 6,
            stackNum: 4,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.width * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.width * 0.8,
            cardBuilder: (context, index) => Card(
              child: Image.asset('${welcomeImages[index]}'),
            ) ,
            cardController: controller = CardController(),
            swipeUpdateCallback:
                (DragUpdateDetails details, Alignment align){
              if(align.x < 0){

              }else if (align.x > 0){
              }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientaion , int index){

            },
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
          Icon(
            Icons.directions_bike,
            size: 30.0,
            color: Colors.redAccent,
          ),
          Icon(
            Icons.location_on,
            size: 30.0,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}











//
//class MyHome extends StatefulWidget {
//  @override
//  _MyHomeState createState() => _MyHomeState();
//}
//
//class _MyHomeState extends State<MyHome> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.black,
//      body: SafeArea(
//        child: Column(
//          children: <Widget>[
//            SizedBox(
//              height: 10,
//            ),
//            Padding(
//              padding: EdgeInsets.only(top: 8),
//              child: Row(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  MaterialButton(
//                    onPressed: () {},
//                    child: Icon(
//                      Icons.arrow_back_ios,
//                      color: Colors.white,
//                      size: 22,
//                    ),
//                    shape: CircleBorder(),
//                    elevation: 2.0,
//                    color: Color(0xff3f4249),
//                    padding: EdgeInsets.all(12),
//                  ),
//                  Text(
//                    'Secrets',
//                    style: TextStyle(fontSize: 22, color: Colors.white),
//                  ),
//                  RawMaterialButton(
//                    onPressed: () {},
//                    child: Icon(
//                      Icons.add,
//                      color: Colors.white,
//                      size: 22,
//                    ),
//                    shape: CircleBorder(),
//                    elevation: 2.0,
//                    fillColor: Color(0xff6fb742),
//                    padding: EdgeInsets.all(12),
//                  ),
//                ],
//              ),
//            ),
//            SizedBox(
//              height: 40,
//            ),
//            Card(
//              color: Color(0xff6bb23e),
//              semanticContainer: true,
//              elevation: 10,
//              clipBehavior: Clip.antiAliasWithSaveLayer,
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(20),
//              ),
//              child: Container(
//                height: 400,
//                width: MediaQuery.of(context).size.width / 1.2,
//                padding: EdgeInsets.all(36),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  mainAxisSize: MainAxisSize.max,
//                  children: <Widget>[
//                    Text(
//                      'Alba',
//                      style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
//                    ),
//                    SizedBox(
//                      height: 20,
//                    ),
//                    Container(
//                      height: 1,
//                      width: 250,
//                      padding: EdgeInsets.only(left: 560),
//                      color: Colors.white,
//                    ),
//                    SizedBox(
//                      height: 20,
//                    ),
//                    Padding(
//                      padding: EdgeInsets.only(top: 28),
//                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.center,
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          Padding(
//                            padding: EdgeInsets.only(top: 32),
//                            child: Text(
//                              'Who would you ...?',
//                              style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.normal),
//                              textAlign: TextAlign.center,
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//            Expanded(
//              child: Container(
//                alignment: Alignment.bottomCenter,
//                padding: EdgeInsets.only(bottom: 38),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceAround,
//                  children: <Widget>[
//                    Container(
//                      width: 150,
//                      child: RawMaterialButton(
//                        onPressed: () {},
//                        child: Text(
//                          'Complete',
//                          style: TextStyle(fontSize: 22, color: Color(0xff6bb23e)),
//                        ),
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(5),
//                        ),
//                        elevation: 2.0,
//                        fillColor: Color(0xff3f4249),
//                        padding: EdgeInsets.all(12),
//                      ),
//                    ),
//                    Container(
//                      width: 150,
//                      child: RawMaterialButton(
//                        onPressed: () {},
//                        child: Text(
//                          'Forget',
//                          style: TextStyle(fontSize: 22, color: Colors.red),
//                        ),
//                        shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(5),
//                        ),
//                        elevation: 2.0,
//                        fillColor: Color(0xff3f4249),
//                        padding: EdgeInsets.all(12),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
