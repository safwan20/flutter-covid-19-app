import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Utilities/dataseries.dart';

class Donut extends StatelessWidget {
  Donut(this.data);
  final List<DataSeries> data;

  @override
  Widget build(BuildContext context) {
    print('data');
    print(data);
    var series = [
      charts.Series(
        domainFn: (DataSeries sales, _) => sales.state,
        measureFn: (DataSeries sales, _) => sales.confirmed,
        colorFn: (DataSeries sales, _) => sales.barColor,
        id: 'Sales',
        data: data,
        labelAccessorFn: (DataSeries sales, _) =>
            '${sales.state}: ${sales.confirmed}',
      )
    ];

    var chart = charts.PieChart(series,
        animate: false,
        defaultRenderer:
            new charts.ArcRendererConfig(arcWidth: 60, arcRendererDecorators: [
          new charts.ArcLabelDecorator(
            labelPosition: charts.ArcLabelPosition.outside,
          )
        ]));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DonutChart'),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Note: auto-rotate for better representation.',
                style: TextStyle(
                    color: Colors.red
                ),
              ),
              Expanded(
                child: chart,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Sales {
  final String day;
  final int sold;
  Sales(this.day, this.sold);
}
