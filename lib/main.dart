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
      debugShowCheckedModeBanner: false,
      home: QCard(),
    );
  }
}

class subsciptionCard extends StatelessWidget {

  String image;
  String name;
  String date;
  String price;
  bool banner;
  Color backgroundColor;

  subsciptionCard({this.image, this.backgroundColor, this.name,
  this.banner, this.price, this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(image , height: 45, width: 45),
              SizedBox(width: 10,),
              Text(name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          Column(
            children: <Widget>[
              Text(date, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              SizedBox(height: 3,),
              banner == true ? Container(
                padding: EdgeInsets.all(3),
                child: Text("Trial Period", style: TextStyle(fontSize: 12),),
                color: Colors.redAccent,
              ) : Container(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                child: Text(price, style: TextStyle(fontSize: 10),),
              )
            ],
          )
        ],
      ),
    );
  }
}
class QCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: Icon(Icons.settings),
        title: Text("Subscriptions"),
        actions: <Widget>[
          Icon(Icons.calendar_today),
          SizedBox(width: 20),
          Icon(Icons.add_circle)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              subsciptionCard(name: "Netflix", image: "images/netflix.png", backgroundColor: Colors.black54,
              banner: true, date: "30 MAY",),
              subsciptionCard(name: "Disney Plus", image: "images/disney.png", backgroundColor: Color(0xff00004d),
              banner: false, date: "28 MAY", price: "\$\22.00"),
              subsciptionCard(name: "Spotify", image: "images/spotify.png", backgroundColor: Color(0xff00cd00),
              banner: true, date: "30 JUL",),
            ],
          ),
          Container(
            color: Color(0xff5a5a5a),
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Total expenses (Per Month)", style: TextStyle(fontSize: 12, color: Colors.white70),),
                SizedBox(height: 10,),
                Text("\$\44.00", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

