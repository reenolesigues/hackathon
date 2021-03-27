import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/widgets/heartbeat-chart.dart';
import 'package:hackathon/widgets/quarantine-chart.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/aammad02.png', fit: BoxFit.contain, height: MediaQuery.of(context).size.height / 10,),
              Text('Adaptive Architecture using Multizonal Mesh and Anomaly Detection',),
            ],
          ),
          backgroundColor: Colors.black87,
        ),
        primary: true,
        body: SingleChildScrollView(
          child: Container(
            // color: Colors.lightGreen,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9,
                  ],
                  colors: [
                    Colors.yellow,
                    Colors.red,
                    Colors.indigo,
                    Colors.teal,
                  ],
                )
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () => Navigator.pushNamed(context, '/manage-host'),
                      icon: Icon(Icons.laptop_mac_rounded),
                      label: Text('Manage Hosts'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                  return Colors.black38;
                                },
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton.icon(onPressed: () => Navigator.pushNamed(context, '/manage-model'),
                        icon: Icon(Icons.graphic_eq),
                        label: Text('Manage Models'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return Colors.black38;
                            },
                          ),
                        ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton.icon(onPressed: () => Navigator.pushNamed(context, '/anomaly-quarantine'),
                        icon: Icon(Icons.bug_report),
                        label: Text('Anomaly Quarantine'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            return Colors.black38;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      color: Colors.black38,
                      padding: EdgeInsets.all(20),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Column(
                            children: [
                              // Text('Hosts Count', style: Theme.of(context).textTheme.headline6,),
                              Text('Hosts Count', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),),
                              SizedBox(height: 50),
                              TextButton(onPressed: () => Navigator.pushNamed(context, '/manage-host'), child: Text('3', style: TextStyle(fontSize: MediaQuery.of(context).size.height/6, fontWeight: FontWeight.bold, color: Colors.white),),)
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      color: Colors.black38,
                      width: MediaQuery.of(context).size.width/3,
                      padding: EdgeInsets.all(20),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Column(
                            children: [
                              Text('Created Models', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),),
                              // Text('Ready Models', style: Theme.of(context).textTheme.headline6,),
                              SizedBox(height: 50),
                              TextButton(onPressed: () => Navigator.pushNamed(context, '/manage-model'), child: Text('1', style: TextStyle(fontSize: MediaQuery.of(context).size.height/6, fontWeight: FontWeight.bold, color: Colors.white),),)
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // color: Colors.black38,
                      width: MediaQuery.of(context).size.width/3,
                      padding: EdgeInsets.all(20),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Column(
                            children: [
                              // Text('Quarantine Count'),
                              SizedBox(height: 50),
                              QuarantineChart(),
                              // generateQuarantineGraph(context),
                              // TextButton(onPressed: () => Navigator.pushNamed(context, '/anomaly-quarantine'), child: Text('37', style: TextStyle(fontSize: MediaQuery.of(context).size.height/6, fontWeight: FontWeight.bold),),)
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      // color: Colors.black38,
                      width: MediaQuery.of(context).size.width/3,
                      padding: EdgeInsets.all(20),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Column(
                            children: [
                              // Text('Heartbeat Bins'),
                              SizedBox(height: 50),
                              HeartbeatChart(),
                              // generateHeartbeatGraph(context),
                              // TextButton(onPressed: () {
                              //   Alert(
                              //       title: "Healthy Host(s)",
                              //       context: context,
                              //       content: Text("demoserver03.homecredit.ph", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),),
                              //       buttons: [
                              //         DialogButton(
                              //           onPressed: () {
                              //             Navigator.pop(context);
                              //           },
                              //           child: Text(
                              //             "OK",
                              //             style: TextStyle(color: Colors.white, fontSize: 20),
                              //           ),
                              //         ),
                              //       ]
                              //   ).show();
                              // }, child: Text('1', style: TextStyle(fontSize: MediaQuery.of(context).size.height/6, fontWeight: FontWeight.bold),),)
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: MediaQuery.of(context).size.height,
                //   child: GridView.count(
                //     crossAxisCount: 2,
                //     children: [
                //       Container(
                //         color: Colors.black38,
                //         padding: EdgeInsets.all(20),
                //         child: LayoutBuilder(
                //           builder: (context, constraints) {
                //             return Column(
                //               children: [
                //                 Text('Hosts Count'),
                //                 SizedBox(height: 50),
                //                 TextButton(onPressed: () => Navigator.pushNamed(context, '/manage-host'), child: Text('3', style: TextStyle(fontSize: MediaQuery.of(context).size.height/6, fontWeight: FontWeight.bold),),)
                //               ],
                //             );
                //           },
                //         ),
                //       ),
                //       Container(
                //         // color: Colors.black38,
                //         padding: EdgeInsets.all(20),
                //         child: LayoutBuilder(
                //           builder: (context, constraints) {
                //             return Column(
                //               children: [
                //                 Text('Ready Models'),
                //                 SizedBox(height: 50),
                //                 TextButton(onPressed: () => Navigator.pushNamed(context, '/manage-model'), child: Text('3', style: TextStyle(fontSize: MediaQuery.of(context).size.height/6, fontWeight: FontWeight.bold),),)
                //               ],
                //             );
                //           },
                //         ),
                //       ),
                //       Container(
                //         // color: Colors.black38,
                //         padding: EdgeInsets.all(20),
                //         child: LayoutBuilder(
                //           builder: (context, constraints) {
                //             return Column(
                //               children: [
                //                 Text('Quarantine Count'),
                //                 SizedBox(height: 50),
                //                 QuarantineChart(),
                //                 // generateQuarantineGraph(context),
                //                 // TextButton(onPressed: () => Navigator.pushNamed(context, '/anomaly-quarantine'), child: Text('37', style: TextStyle(fontSize: MediaQuery.of(context).size.height/6, fontWeight: FontWeight.bold),),)
                //               ],
                //             );
                //           },
                //         ),
                //       ),
                //       Container(
                //         // color: Colors.black38,
                //         padding: EdgeInsets.all(20),
                //         child: LayoutBuilder(
                //           builder: (context, constraints) {
                //             return Column(
                //               children: [
                //                 Text('Heartbeat Bins'),
                //                 SizedBox(height: 50),
                //                 HeartbeatChart(),
                //                 // generateHeartbeatGraph(context),
                //                 // TextButton(onPressed: () {
                //                 //   Alert(
                //                 //       title: "Healthy Host(s)",
                //                 //       context: context,
                //                 //       content: Text("demoserver03.homecredit.ph", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),),
                //                 //       buttons: [
                //                 //         DialogButton(
                //                 //           onPressed: () {
                //                 //             Navigator.pop(context);
                //                 //           },
                //                 //           child: Text(
                //                 //             "OK",
                //                 //             style: TextStyle(color: Colors.white, fontSize: 20),
                //                 //           ),
                //                 //         ),
                //                 //       ]
                //                 //   ).show();
                //                 // }, child: Text('1', style: TextStyle(fontSize: MediaQuery.of(context).size.height/6, fontWeight: FontWeight.bold),),)
                //               ],
                //             );
                //           },
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
    );
  }
  //
  // Widget generateQuarantineGraph(BuildContext context) {
  //   return Center(
  //     child: GestureDetector(
  //       onDoubleTap: () => Navigator.pushNamed(context, '/anomaly-quarantine'),
  //       child: Container(
  //         height: MediaQuery.of(context).size.height/ 3,
  //         width: MediaQuery.of(context).size.width / 5,
  //         decoration: BoxDecoration(
  //             border: Border.all(color: Colors.black38, style: BorderStyle.solid)
  //         ),
  //         child: BezierChart(
  //           bezierChartScale: BezierChartScale.HOURLY,
  //           fromDate: new DateTime(2021, 03,27),
  //           toDate: new DateTime(2021, 03,28),
  //           // xAxisCustomValues: const [0, 3, 10, 15, 20, 25, 30, 35],
  //           series: [
  //             BezierLine(
  //               lineColor: Colors.brown,
  //               lineStrokeWidth: 2.0,
  //               label: "Host 1",
  //               data: [
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 01, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 02, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 03, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 04, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 05, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 06, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 07, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 08, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 09, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 10, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 11, 00)),
  //                 DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 12, 00)),
  //                 DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 13, 00)),
  //                 DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 14, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 15, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 16, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 17, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 18, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 19, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 20, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 21, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 22, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 23, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 24, 00)),
  //               ],
  //             ),
  //             BezierLine(
  //               lineColor: Colors.orange,
  //               lineStrokeWidth: 2.0,
  //               label: "Host 2",
  //               dataPointFillColor: Colors.black38,
  //               dataPointStrokeColor: Colors.black,
  //               data: [
  //                 DataPoint<DateTime>(value: 6, xAxis: DateTime(2021, 03, 27, 01, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 02, 00)),
  //                 DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 03, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 04, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 05, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 06, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 07, 00)),
  //                 DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 08, 00)),
  //                 DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 09, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 10, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 11, 00)),
  //                 DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 12, 00)),
  //                 DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 13, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 14, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 15, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 16, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 17, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 18, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 19, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 20, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 21, 00)),
  //                 DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 22, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 23, 00)),
  //                 DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 24, 00)),
  //               ],
  //             ),
  //             BezierLine(
  //               lineColor: Colors.yellow,
  //               lineStrokeWidth: 2.0,
  //               label: "Host 2",
  //               dataPointFillColor: Colors.black38,
  //               dataPointStrokeColor: Colors.black,
  //               data: [
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 01, 00)),
  //                 DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 02, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 03, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 04, 00)),
  //                 DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 05, 00)),
  //                 DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 06, 00)),
  //                 DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 07, 00)),
  //                 DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 08, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 09, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 10, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 11, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 12, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 13, 00)),
  //                 DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 14, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 15, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 16, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 17, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 18, 00)),
  //                 DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 19, 00)),
  //                 DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 20, 00)),
  //                 DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 21, 00)),
  //                 DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 22, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 23, 00)),
  //                 DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 24, 00)),
  //               ],
  //             ),
  //           ],
  //           config: BezierChartConfig(
  //             verticalIndicatorStrokeWidth: 2.0,
  //             verticalIndicatorColor: Colors.black12,
  //             showVerticalIndicator: true,
  //             contentWidth: MediaQuery.of(context).size.width,
  //             backgroundColor: Colors.blueGrey,
  //           ),
  //         ),
  //       ),
  //     )
  //   );
  // }
  //
  // Widget generateHeartbeatGraph(BuildContext context) {
  //   return Center(
  //       child: GestureDetector(
  //         onDoubleTap: () => Navigator.pushNamed(context, '/anomaly-quarantine'),
  //         child: Container(
  //           height: MediaQuery.of(context).size.height/ 3,
  //           width: MediaQuery.of(context).size.width / 5,
  //           decoration: BoxDecoration(
  //               border: Border.all(color: Colors.black38, style: BorderStyle.solid)
  //           ),
  //           child: BezierChart(
  //             bezierChartScale: BezierChartScale.HOURLY,
  //             fromDate: new DateTime(2021, 03,27),
  //             toDate: new DateTime(2021, 03,28),
  //             // xAxisCustomValues: const [0, 3, 10, 15, 20, 25, 30, 35],
  //             series: [
  //               BezierLine(
  //                 lineColor: Colors.green,
  //                 lineStrokeWidth: 2.0,
  //                 label: "Host 1",
  //                 data: [
  //                   DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 01, 00)),
  //                   DataPoint<DateTime>(value: 6, xAxis: DateTime(2021, 03, 27, 02, 00)),
  //                   DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 03, 00)),
  //                   DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 04, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 05, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 06, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 07, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 08, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 09, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 10, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 11, 00)),
  //                   DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 12, 00)),
  //                   DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 13, 00)),
  //                   DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 14, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 15, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 16, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 17, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 18, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 19, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 20, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 21, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 22, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 23, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 24, 00)),
  //                 ],
  //               ),
  //               BezierLine(
  //                 lineColor: Colors.greenAccent,
  //                 lineStrokeWidth: 2.0,
  //                 label: "Host 2",
  //                 dataPointFillColor: Colors.black38,
  //                 dataPointStrokeColor: Colors.black,
  //                 data: [
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 01, 00)),
  //                   DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 02, 00)),
  //                   DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 03, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 04, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 05, 00)),
  //                   DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 06, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 07, 00)),
  //                   DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 08, 00)),
  //                   DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 09, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 10, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 11, 00)),
  //                   DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 12, 00)),
  //                   DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 13, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 14, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 15, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 16, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 17, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 18, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 19, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 20, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 21, 00)),
  //                   DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 22, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 23, 00)),
  //                   DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 24, 00)),
  //                 ],
  //               ),
  //               BezierLine(
  //                 lineColor: Colors.lightGreenAccent,
  //                 lineStrokeWidth: 2.0,
  //                 label: "Host 2",
  //                 dataPointFillColor: Colors.black38,
  //                 dataPointStrokeColor: Colors.black,
  //                 data: [
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 01, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 02, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 03, 00)),
  //                   DataPoint<DateTime>(value: 6, xAxis: DateTime(2021, 03, 27, 04, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 05, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 06, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 07, 00)),
  //                   DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 08, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 09, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 10, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 11, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 12, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 13, 00)),
  //                   DataPoint<DateTime>(value: 4, xAxis: DateTime(2021, 03, 27, 14, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 15, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 16, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 17, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 18, 00)),
  //                   DataPoint<DateTime>(value: 3, xAxis: DateTime(2021, 03, 27, 19, 00)),
  //                   DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 20, 00)),
  //                   DataPoint<DateTime>(value: 5, xAxis: DateTime(2021, 03, 27, 21, 00)),
  //                   DataPoint<DateTime>(value: 2, xAxis: DateTime(2021, 03, 27, 22, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 23, 00)),
  //                   DataPoint<DateTime>(value: 1, xAxis: DateTime(2021, 03, 27, 24, 00)),
  //                 ],
  //               ),
  //             ],
  //             config: BezierChartConfig(
  //               verticalIndicatorStrokeWidth: 2.0,
  //               verticalIndicatorColor: Colors.black12,
  //               showVerticalIndicator: true,
  //               contentWidth: MediaQuery.of(context).size.width,
  //               backgroundColor: Colors.blueGrey,
  //             ),
  //           ),
  //         ),
  //       )
  //   );
  // }
}