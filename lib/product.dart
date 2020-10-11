import 'package:flutter/material.dart';
import 'dart:ui';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Pika Pika'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  int i;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  String text = 'ADD TO CART';
  changeText() {
    if (i == 0) {
      setState(() {
        text = 'REMOVE';
        i = 1;
      });
    } else {
      setState(() {
        text = 'ADD TO CART';
        i = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 5.0,
          title: Text('Realme 6'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
          )),
      body: Stack(children: <Widget>[
        Image(
          image: NetworkImage(
              "https://bdprice.org/wp-content/uploads/2020/03/Realme-6-Pro-Price-in-Bangladesh-2020-Specifications.jpg"),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Container(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Expanded(
                flex: 9,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 100)),
                      new Container(
                        width: 300.0,
                        height: 300.0,
                        padding: EdgeInsets.all(30),
                        margin: EdgeInsets.only(
                            top: 0, left: 20, right: 20, bottom: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://bdprice.org/wp-content/uploads/2020/03/Realme-6-Pro-Price-in-Bangladesh-2020-Specifications.jpg",
                              ),
                              fit: BoxFit.fill,
                            ),
                            border: Border.all(
                              color: Colors.white,
                              width: 3.0,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 5.0,
                                spreadRadius: 2.0,
                              ),
                            ]),
                      ),
                      new Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(
                              bottom: 0, left: 30.0, right: 15.0),
                          child: Text('Description',
                              textScaleFactor: 2,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                      new Container(
                          margin: const EdgeInsets.only(
                              top: 0, left: 25.0, right: 15.0),
                          child: Divider(
                            color: Colors.white,
                            height: 50,
                            thickness: 2,
                          )),
                      new Container(
                        margin: const EdgeInsets.only(left: 30.0, right: 15.0),
                        child: Text(
                            'Realme has quipped the Realme 6 with a quad-camera setup consisting of a 64-megapixel primary camera, an 8-megapixel wide-angle camera with a 119-degree field of view, a 2-megapixel monochrome camera, and a 2-megapixel macro camera. \nRealme 6 comes with a gaming processor, up to 8GB RAM, expandable storage, big battery pack, fast charging support and a quad-camera setup and starts at Rs 12,999. The smartphone offers a satisfactory display, good battery life, performance that matters and a premium design.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.white)),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 70)),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                    alignment: Alignment.bottomCenter,
                    //MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(4.0),

                    // margin: EdgeInsets.all(10),
                    child: ButtonTheme(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minWidth: MediaQuery.of(context).size.width / 2.2,
                        height: 50,
                        child: new Row(children: <Widget>[
                          new Container(
                              margin: EdgeInsets.all(2),
                              decoration: new BoxDecoration(
                                color: Colors.transparent,
                                border: new Border.all(
                                    color: Colors.white, width: 2.0),
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              child: new RaisedButton.icon(
                                onPressed: () {},
                                color: Colors.transparent,
                                textColor: Colors.white,
                                icon: new Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                ),
                                label: Text('BUY NOW',
                                    textScaleFactor: 1.1,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              )),
                          new Container(
                              margin: EdgeInsets.all(2),
                              decoration: new BoxDecoration(
                                color: Colors.transparent,
                                border: new Border.all(
                                    color: Colors.white, width: 2.0),
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                              child: new RaisedButton.icon(
                                onPressed: () => changeText(),
                                color: Colors.transparent,
                                textColor: Colors.white,
                                icon: new Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                label: Text('$text',
                                    textScaleFactor: 1.1,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              )),
                        ]))))
          ],
        )
      ]),
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
