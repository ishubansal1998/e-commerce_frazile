import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Pika Pika'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> lis = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQHdN-gbr6nA687asgwBM8KScotwbPdU6Mi3A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTICgkwYy4cC9LyDnUN9S1EamlI9JkIQKGLgw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRz9VJvbE7wqTPFJlP1cO02d0esf88o9MGJTw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTu9prvKq8hwy_YI7LjQi_AipRvceJO_TpyTA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSSJu8aBWwZjQxefMp4A-KaRw3VQamy_rqN2w&usqp=CAU"
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 5.0,
            title: Text('Search...'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: Stack(children: <Widget>[
          Image(
            image: NetworkImage(
                "https://cdn.drsutervision.com/wp-content/uploads/2018/01/bubble-background.jpg"),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),

          // Container(
          // child: BackdropFilter(
          // filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          //child: Container(
          // color: Colors.black.withOpacity(0.6),
          //),
          // ),
          //),

          //new Container(
//            color: Color
          SingleChildScrollView(
            child: new Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
//              Expanded(
                ///                flex: 1,
                // child:

                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 80),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 120,

                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,

                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQHdN-gbr6nA687asgwBM8KScotwbPdU6Mi3A&usqp=CAU",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTICgkwYy4cC9LyDnUN9S1EamlI9JkIQKGLgw&usqp=CAU",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRz9VJvbE7wqTPFJlP1cO02d0esf88o9MGJTw&usqp=CAU",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTu9prvKq8hwy_YI7LjQi_AipRvceJO_TpyTA&usqp=CAU",
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSSJu8aBWwZjQxefMp4A-KaRw3VQamy_rqN2w&usqp=CAU"
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            height: 110,
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage("$i"),
                                    fit: BoxFit.fill),
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 5.0,
                                    spreadRadius: 3.0,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ]),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ), //),

                Container(
                  //height: 20,
                  margin: EdgeInsets.only(top: 20, left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text("Catogories",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'google',
                          fontSize: 26.0,
                          fontWeight: FontWeight.w700)),
                ),
                Container(
                    margin:
                        const EdgeInsets.only(top: 3.0, bottom: 14.0, left: 20),
                    width: (MediaQuery.of(context).size.width - 40) / 1.5,
                    height: 3.0,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(14.0))),
                Container(
                  height: 80,
                  alignment: Alignment.topCenter,
                  child: ListView.builder(
                    //reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: lis.length,
                    itemBuilder: (context, position) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width / 2.7,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: NetworkImage(lis[position]),
                                  fit: BoxFit.fill),
                              color: Colors.black,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 5.0,
                                  spreadRadius: 3.0,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ]),
                        ),
                      );
                    },
                  ),
                ),

                new Container(
                  margin:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                  //height: 320.0,
                  width: MediaQuery.of(context).size.width - 40,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: new Text("Trending Today",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'google',
                                      fontSize: 26.0,
                                      fontWeight: FontWeight.w700)),
                            ),
                            new Icon((Icons.chevron_left)),
                            new Icon((Icons.chevron_right)),
                          ],
                        ),
                        new Container(
                            margin:
                                const EdgeInsets.only(top: 3.0, bottom: 14.0),
                            width:
                                (MediaQuery.of(context).size.width - 40) / 1.5,
                            height: 3.0,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(14.0))),
                      ]),
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 1.05,
                  alignment: Alignment.centerLeft,
                  child: ListView.builder(
                    //reverse: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: lis.length,
                    itemBuilder: (context, position) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(lis[position]),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                                child: Container(
                                  color: Colors.black.withOpacity(0.4),
                                ),
                              ),
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Container(
                                  height: (MediaQuery.of(context).size.width -
                                          100) /
                                      2.2,
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width / 2.2,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(lis[position]),
                                          fit: BoxFit.fill),
                                      color: Colors.black,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 5.0,
                                          spreadRadius: 3.0,
                                          offset: Offset(2.0, 2.0),
                                        ),
                                      ]),
                                )),
                          ]));
                    },
                  ),
                ),
              ],
            ),
          ),
        ]));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
