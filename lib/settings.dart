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
            title: Text('Settings'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
            )),
        body: Stack(children: <Widget>[
          Image(
            image: NetworkImage(
                "https://i.pinimg.com/originals/df/6f/0a/df6f0a9e818bcb3b829ea6054ddccd3d.jpg"),
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

          //new Container(
//            color: Color

          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      padding: EdgeInsets.only(top: 50),
                      margin: EdgeInsets.only(top: 80),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/df/6f/0a/df6f0a9e818bcb3b829ea6054ddccd3d.jpg"),
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
                    )),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.only(
                        bottom: 15, left: 30.0, right: 15.0),
                    //color: Colors.white,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                            spreadRadius: 3.0,
                            offset: Offset(3.0, 3.0),
                          ),
                        ]),

                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: ListTile.divideTiles(context: context, tiles: [
                        ListTile(
                          leading: Icon(Icons.supervised_user_circle),
                          title: Text('Profile'),
                        ),
                        ListTile(
                          leading: Icon(Icons.account_balance_wallet),
                          title: Text('My Wallet'),
                        ),
                        ListTile(
                          leading: Icon(Icons.shopping_cart),
                          title: Text('My Orders'),
                        ),
                        ListTile(
                          leading: Icon(Icons.local_offer),
                          title: Text('Coupons'),
                        ),
                        ListTile(
                          leading: Icon(Icons.info),
                          title: Text('Help & Support'),
                        ),
                        ListTile(
                          leading: Icon(Icons.contacts),
                          title: Text('Contact us'),
                        ),
                        ListTile(
                          leading: Icon(Icons.exit_to_app),
                          title: Text('Log Out'),
                        ),
                      ]).toList(),
                    ),
                  ))
            ],
          ),
        ]));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
