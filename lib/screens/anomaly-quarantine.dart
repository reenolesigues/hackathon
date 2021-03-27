import 'package:flutter/material.dart';

class AnomalyQuarantine extends StatefulWidget {
  @override
  _AnomalyQuarantineState createState() => _AnomalyQuarantineState();
}

class _AnomalyQuarantineState extends State<AnomalyQuarantine> {
  List<List<String>> anomalies = [["N/A"]];

  List<List<String>> anomalies01 = [
    [],
    ["Anomaly1 01", "Anomaly1 011", "Anomaly1 012"],
    ["Anomaly1 02", "Anomaly1 021"],
    ["Anomaly1 03", "Anomaly1 031", "Anomaly1 032", "Anomaly1 033"],
    ["Anomaly1 04", "Anomaly1 041"],
    ["Anomaly1 05", "Anomaly1 051"],
    ["Anomaly1 06", "Anomaly1 061"],
    ["Anomaly1 07", "Anomaly1 071"],
    ["Anomaly1 08", "Anomaly1 081"],
    ["Anomaly1 09", "Anomaly1 091"],
    ["Anomaly1 10", "Anomaly1 101"],
    ["Anomaly1 11", "Anomaly1 111"],
    ["Anomaly1 12", "Anomaly1 121"],
    ["Anomaly1 13", "Anomaly1 131"],
    ["Anomaly1 14", "Anomaly1 141"],
    ["Anomaly1 15", "Anomaly1 151"],
    ["Anomaly1 16", "Anomaly1 161"],
    ["Anomaly1 17", "Anomaly1 171"],
    ["Anomaly1 18", "Anomaly1 181"],
    ["Anomaly1 19", "Anomaly1 191"],
    ["Anomaly1 20", "Anomaly1 201"],
    ["Anomaly1 21", "Anomaly1 211"],
    ["Anomaly1 22", "Anomaly1 221"],
    ["Anomaly1 23", "Anomaly1 231"],
  ];

  List<List<String>> anomalies02 = [
    ["Anomaly2 00", "Anomaly2 001"],
    [],
    ["Anomaly2 02", "Anomaly2 021"],
    ["Anomaly2 03", "Anomaly2 031", "Anomaly2 032", "Anomaly2 033"],
    ["Anomaly2 04", "Anomaly2 041"],
    ["Anomaly2 05", "Anomaly2 051"],
    ["Anomaly2 06", "Anomaly2 061"],
    ["Anomaly2 07", "Anomaly2 071"],
    ["Anomaly2 08", "Anomaly2 081"],
    ["Anomaly2 09", "Anomaly2 091"],
    ["Anomaly2 10", "Anomaly2 101"],
    ["Anomaly2 11", "Anomaly2 111"],
    ["Anomaly2 12", "Anomaly2 121"],
    ["Anomaly2 13", "Anomaly2 131"],
    ["Anomaly2 14", "Anomaly2 141"],
    ["Anomaly2 15", "Anomaly2 151"],
    ["Anomaly2 16", "Anomaly2 161"],
    ["Anomaly2 17", "Anomaly2 171"],
    ["Anomaly2 18", "Anomaly2 181"],
    ["Anomaly2 19", "Anomaly2 191"],
    ["Anomaly2 20", "Anomaly2 201"],
    ["Anomaly2 21", "Anomaly2 211"],
    ["Anomaly2 22", "Anomaly2 221"],
    ["Anomaly2 23", "Anomaly2 231"],
  ];

  List<List<String>> anomalies03 = [
    [],
    ["Anomaly2 12", "Anomaly2 121"],
    ["Anomaly2 13", "Anomaly2 131"],
    ["Anomaly2 14", "Anomaly2 141"],
    ["Anomaly2 15", "Anomaly2 151"],
    ["Anomaly2 16", "Anomaly2 161"],
    ["Anomaly2 17", "Anomaly2 171"],
    ["Anomaly2 18", "Anomaly2 181"],
    ["Anomaly2 19", "Anomaly2 191"],
    ["Anomaly2 20", "Anomaly2 201"],
    ["Anomaly2 21", "Anomaly2 211"],
    ["Anomaly2 22", "Anomaly2 221"],
    ["Anomaly2 23", "Anomaly2 231"],
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Anomaly Quarantine'),),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("View: HOST", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        style: BorderStyle.solid
                    ),
                  ),
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/3,
                  child: ListView(
                    padding: EdgeInsets.all(10),
                    children: [
                      TextButton(onPressed: () {
                        setState(() {
                          anomalies = anomalies01;
                        });
                      } , child: Text('demoserver01.homecredit.ph')),
                      Divider(color: Colors.black),
                      TextButton(onPressed: () {
                        setState(() {
                          anomalies = anomalies02;
                        });
                      } , child: Text('demoserver02.homecredit.ph')),
                      Divider(color: Colors.black),
                      TextButton(onPressed: () {
                        setState(() {
                          anomalies = anomalies03;
                        });
                      } , child: Text('demoserver03.homecredit.ph')),
                      Divider(color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Anomaly', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        style: BorderStyle.solid
                    ),
                  ),
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/3,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: Column(
                        children: [
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: anomalies.length,
                            itemBuilder: (context, index) {
                              return ExpansionTile(
                                title: Text("$index : 00"),
                                children: [
                                  Column(
                                    children: _buildExpandableContent(anomalies[index]),
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildExpandableContent(List<String> anomalies) {
    List<Widget> expanded = [];
    for(String anomaly in anomalies) {
      expanded.add(Text(anomaly,));
      expanded.add(SizedBox(height: 10),);
    }
    return expanded;
  }
}