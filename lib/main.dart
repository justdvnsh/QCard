import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: QCard(),
    );
  }
}
class QCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.settings),
        title: Text("Subscriptions"),
        actions: <Widget>[
          Icon(Icons.calendar_today),
          SizedBox(width: 20),
          Icon(Icons.add_circle)
        ],
      )
    );
  }
}

