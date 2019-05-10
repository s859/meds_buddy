import 'package:flutter/material.dart';
import 'dart:async';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen()); // define it once at root level.
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Image.asset(
              'images/medsbuddy-flash.png',
              width: 255,
              height: 460,
              fit: BoxFit.cover,
            ),
          ],
        )
      /*     body: Text(
        'Welcome to BMI Calculator',
        style: new TextStyle(
            fontSize: 15.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
*/
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: Border.all(
          color: Colors.orange,
          width: 4.0,
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Container(
        child: Row (
          children: [
            Image.asset(
              'images/medsbuddy-med-icon.png',
              width: 55,
              height: 55,
            ),
            Text('Meds',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Meds Buddy',
          style: new TextStyle(color: Colors.white),
        ),
      ),
    );
    body:
      decoration: boxDecoration( color: Colors.orange ),
    children
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/medsbuddy-med-icon.png'),
        Image.asset('images/medsbuddy-sched-icon.png'),
        Image.asset('images/medsbuddy-log-icon.png'),
      ],
    );
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Meds'),
        Text('Schedule'),
        Text('Log'),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'This app was written in 2019.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Meds Buddy',
      home: Scaffold(
//        appBar: AppBar(
//         title: Text('Meds Buddy'),
//        ),
        body: ListView(
          children: [
            Image.asset(
              'images/medsbuddy-flash.png',
              width: 255,
              height: 460,
              fit: BoxFit.cover,
            ),
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
*/