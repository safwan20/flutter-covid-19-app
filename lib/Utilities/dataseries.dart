import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DataSeries {
  DataSeries(this.state, this.confirmed,this.barColor);
  final String state;
  final int confirmed;
  final charts.Color barColor;
}
