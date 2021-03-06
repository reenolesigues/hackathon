import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/quarantine-data.dart';
import 'package:hackathon/dtos/anomaly.dart';

class QuarantineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Series<Anomaly, String>> series = [
      Series(
          id: "Anomalies",
          data: QuarantineData.quarantineData,
          domainFn: (Anomaly anomaly, _) => anomaly.timestamp.hour.toString(),
          measureFn: (Anomaly anomaly, _) => anomaly.count,
          colorFn:  (Anomaly anomaly, _) => anomaly.barColor,
      )
    ];

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/anomaly-quarantine'),
      child: Container(
        height: MediaQuery.of(context).size.height/3,
        color: Colors.black38,
        padding: EdgeInsets.all(20),
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "Anomaly Count",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Expanded(
                  child: BarChart(series,
                    animate: true,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "Time (hour)",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
