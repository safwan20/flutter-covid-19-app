import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import '../Utilities/dataseries.dart';
import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  Bar(this.data);
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

    var chart = charts.BarChart(
      series,
      animate: false,
      vertical: false,
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      domainAxis:
          new charts.OrdinalAxisSpec(renderSpec: new charts.NoneRenderSpec()),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BarChart'),
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
              Expanded(
                child: SizedBox(
                  height: 400.0,
                  child: chart,
                ),
              ),
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
