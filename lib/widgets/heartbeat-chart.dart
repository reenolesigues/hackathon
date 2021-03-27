import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/data/heartbeat-data.dart';
import 'package:hackathon/data/quarantine-data.dart';
import 'package:hackathon/dtos/anomaly.dart';
import 'package:hackathon/dtos/heartbeat.dart';

class HeartbeatChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Series<Heartbeat, String>> series = [
      Series(
          id: "Heartbeats",
          data: HeartbeatData.heartbeats,
          domainFn: (Heartbeat heartbeat, _) => heartbeat.timestamp.hour.toString(),
          measureFn: (Heartbeat heartbeat, _) => heartbeat.count,
          colorFn:  (Heartbeat heartbeat, _) => heartbeat.barColor,
      )
    ];

    return Container(
      color: Colors.black38,
      height: MediaQuery.of(context).size.height/3,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Total Heartbeat",
                style: Theme.of(context).textTheme.headline6,
                // style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: BarChart(series,
                    animate: true,
                ),
              ),
              Text(
                "Time (hour)",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
