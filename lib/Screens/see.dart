import 'package:flutter/material.dart';



class Covid extends StatelessWidget {

  Covid({this.x,this.y});
  final List x;
  final List y;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'COVID STATS STATE WISE',
              ),
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      pandemic(x: x[0], y: y[0]),
                      pandemic(x: x[1], y: y[1]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[2], y: y[2]),
                      pandemic(x: x[3], y: y[3]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[4], y: y[4]),
                      pandemic(x: x[5], y: y[5]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[6], y: y[6]),
                      pandemic(x: x[7], y: y[7]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[8], y: y[8]),
                      pandemic(x: x[9], y: y[9]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[10], y: y[10]),
                      pandemic(x: x[11], y: y[11]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[12], y: y[12]),
                      pandemic(x: x[13], y: y[13]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[14], y: y[14]),
                      pandemic(x: x[15], y: y[15]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[16], y: y[16]),
                      pandemic(x: x[17], y: y[17]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[18], y: y[18]),
                      pandemic(x: x[19], y: y[19]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[20], y: y[20]),
                      pandemic(x: x[21], y: y[21]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[22], y: y[22]),
                      pandemic(x: x[23], y: y[23]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[24], y: y[24]),
                      pandemic(x: x[25], y: y[25]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[26], y: y[26]),
                      pandemic(x: x[27], y: y[27]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[28], y: y[28]),
                      pandemic(x: x[29], y: y[29]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[30], y: y[30]),
                      pandemic(x: x[30], y: y[30]),
                    ],
                  ),
                  Row(
                    children: [
                      pandemic(x: x[31], y: y[31]),
                      pandemic(x: x[32], y: y[32]),
                    ],
                  ),
                ],
              ),
            )
        )
    );
  }
}

class pandemic extends StatelessWidget {

  pandemic({this.x,this.y});

  final String x;
  final int y;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        elevation: 50,
        color: Colors.grey,
        child: ListTile(
          title: Text(
            x,
          ),
          subtitle: Text(y.toString()),
        ),
      ),
    );
  }
}



