import 'package:flutter/material.dart';
import '../Utilities/spin.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String check;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('COVID-19'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  check = 'Rounded';
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Spin(check)));
                },
                child: Card(
                  child: ListTile(
                    title: Text(
                      'ROUNDED BAR',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  check = 'Bar';
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Spin(check)));
                },
                child: Card(
                  child: ListTile(
                    title: Text(
                      'BAR',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  check = 'pie';
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Spin(check)));
                },
                child: Card(
                  child: ListTile(
                    title: Text(
                      'PIE',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  check = 'donut';
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Spin(check)));
                },
                child: Card(
                  child: ListTile(
                    title: Text(
                      'DONUT',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  check = 'data';
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Spin(check)));
                },
                child: Card(
                  child: ListTile(
                    title: Text(
                      'STATS',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
