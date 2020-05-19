import 'package:covid/Screens/home.dart';
import 'package:flutter/material.dart';
import 'Utilities/spin.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SplashScreen(
          seconds: 5,
          navigateAfterSeconds: new AfterSplash(),
          title: new Text('COVID-19',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
            ),),
          image: Image(image: AssetImage('images/corona.jpg'),),
          backgroundColor: Colors.white,
          styleTextUnderTheLoader: new TextStyle(),
          photoSize: 100.0,
          onClick: ()=>print("Flutter Egypt"),
          loaderColor: Colors.white
      )
    );
  }
}


class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
    );
  }
}
