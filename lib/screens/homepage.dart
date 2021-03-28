import 'package:flutter/material.dart';
import 'package:hackathon/widgets/heartbeat-chart.dart';
import 'package:hackathon/widgets/quarantine-chart.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/aammad02.png', fit: BoxFit.contain, height: MediaQuery.of(context).size.height / 10,),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('Adaptive Architecture using Multizonal Mesh and Anomaly Detection', style: TextStyle(fontSize: 18),),
              ),
            ],
          ),
          backgroundColor: Colors.black87,
        ),
        primary: true,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
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
              mainAxisAlignment: MainAxisAlignment.start,
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
                SizedBox(height: 30),
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
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Hosts Count', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),),
                              ),
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
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text('Created Models', style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 20),),
                              ),
                              SizedBox(height: 50),
                              TextButton(onPressed: () => Navigator.pushNamed(context, '/manage-model'), child: Text('1', style: TextStyle(fontSize: MediaQuery.of(context).size.height/6, fontWeight: FontWeight.bold, color: Colors.white,),),)
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Column(
                            children: [
                              QuarantineChart(),
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Column(
                            children: [
                              HeartbeatChart(),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}