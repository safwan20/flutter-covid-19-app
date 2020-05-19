import 'package:covid/Screens/pie.dart';
import 'package:covid/Screens/rounded_bar.dart';
import 'package:covid/Screens/see.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:covid/Screens/bar.dart';
import 'dataseries.dart';
import '../Screens/donut.dart';

class Spin extends StatefulWidget {
  Spin(this.check);
  String check;
  @override
  State<StatefulWidget> createState() {
    return _SpinState(check);
  }
}

class _SpinState extends State<Spin> {
  _SpinState(this.check);
  String check;

  List<DataSeries> data = [];

  List x = [];
  List y = [];

  @override
  void initState() {
    super.initState();
    hello();
  }

  Map citycode = {
    'Maharashtra': 'MH',
    'Gujarat': 'GJ',
    'Rajasthan': 'RJ',
    'Andhra Pradesh': 'AP',
    'Arunachal Pradesh': 'AR',
    'Assam': 'AS',
    'Bihar': 'BR',
    'Chandigarh': 'CH',
    'Delhi': 'DL',
    'Goa': 'GA',
    'Haryana': 'HR',
    'Tamil Nadu': 'TN',
    'Karnataka': 'KA',
    'Chhattisgarh': 'CH',
    'West Bengal': 'WB',
    'Uttar Pradesh': 'UP',
    'Punjab': 'PJ',
    'Jammu and Kashmir': 'JK'
  };

  final List color = [
    Colors.red,
    Colors.amber[300],
    Colors.black,
    Colors.teal,
    Colors.purple,
    Colors.yellow,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
    Colors.cyan,
    Colors.amber[300],
    Colors.red,
    Colors.amber[300],
    Colors.black,
    Colors.teal,
    Colors.purple,
    Colors.yellow,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
    Colors.cyan,
    Colors.red,
    Colors.amber[300],
    Colors.black,
    Colors.teal,
    Colors.purple,
    Colors.yellow,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
    Colors.cyan,
    Colors.amber[300],
    Colors.red,
    Colors.pink,
    Colors.black,
    Colors.teal,
    Colors.purple,
    Colors.yellow,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
    Colors.cyan,
  ];

  void hello() async {
    var url = 'https://api.rootnet.in/covid19-in/stats/latest';
    var response = await http.get(url);
    final decoded = json.decode(response.body);
    for (var i = 0; i < decoded['data']['regional'].length; i++) {
      var check = decoded['data']['regional'][i];
      if (citycode[check['loc']] != null) {
        data.add(DataSeries(
            citycode[check['loc']],
            check['confirmedCasesIndian'],
            charts.ColorUtil.fromDartColor(color[i])));
      }
      x.add(check['loc']);
      y.add(check['confirmedCasesIndian']);
    }
    if (check == 'Rounded') {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Rounded(data)));
    } else if (check == 'Bar') {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Bar(data)));
    } else if (check == 'pie') {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Pie(data)));
    } else if (check == 'donut'){
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Donut(data)));
    }
    else {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Covid(x: x,y: y)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.grey,
          size: 100.0,
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
