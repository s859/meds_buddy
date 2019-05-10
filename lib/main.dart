import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget medrow = Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: Border.all(
          color: Colors.orange,
          width: 3.0,
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Image.asset(
            'images/medsbuddy-med-icon.png',
            width: 55,
            height: 55,
          ),
          Text(
            'Meds',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );

    Widget schedrow = Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: Border.all(
          color: Colors.orange,
          width: 3.0,
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Image.asset(
            'images/medsbuddy-sched-icon.png',
            width: 55,
            height: 55,
          ),
          Text(
            'Schedule',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );

    Widget logrow = Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: Border.all(
          color: Colors.orange,
          width: 3.0,
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Image.asset(
            'images/medsbuddy-log-icon.png',
            width: 55,
            height: 55,
          ),
          Text(
            'Log',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );

    Widget rowspacer = Container(
      height: 8.0,
    );

    return MaterialApp(
      title: 'Meds Buddy',
      home: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: Text('Meds Buddy'),
          backgroundColor: Colors.orange[500],
        ),
        body: ListView(
          children: [
            rowspacer,
            Image.asset(
              'images/medsbuddy-flash.png',
              width: 70,
//              height: 185,
              height: 160,
              fit: BoxFit.fitHeight,
            ),
            rowspacer,
            medrow,
            rowspacer,
            schedrow,
            rowspacer,
            logrow,
          ],
        ),
      ),
    );
  }
}
