import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int R = 0;
  int G = 0;
  int B = 0;
  Color bgColor = Color.fromRGBO(255, 255, 255, 1);
  Color textColor = Color.fromRGBO(0, 0, 0, 1);

  void changeColor() {
    setState(() {
      var rng = new Random();
      R = rng.nextInt(255);
      G = rng.nextInt(255);
      B = rng.nextInt(255);
      bgColor = Color.fromRGBO(R, G, B, 1);
      textColor = Color.fromRGBO(G, B, R, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return GestureDetector(
      onTap: changeColor,
      child: Container(
        child: Center(
          child: Text(
            'Hey there',
            style: TextStyle(
                fontSize: 32.0,
                color: textColor,
                decoration: TextDecoration.none),
          ),
        ),
        decoration: BoxDecoration(
          color: bgColor,
        ),
      ),
    );
  }
}
