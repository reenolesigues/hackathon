import 'package:flutter/material.dart';
import 'package:hackathon/screens/anomaly-dashboard.dart';
import 'package:hackathon/screens/anomaly-quarantine.dart';
import 'package:hackathon/screens/homepage.dart';
import 'package:hackathon/screens/host-dashboard.dart';
import 'package:hackathon/screens/host-manager.dart';
import 'package:hackathon/screens/model-dashboard.dart';
import 'package:hackathon/screens/model-manager.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AAMMAD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.teal,
        selectedRowColor: Colors.red,
        primaryColorDark: Colors.teal,
        primaryColorLight: Colors.tealAccent,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => Homepage(),
        '/manage-host' : (context) => HostDashboard(),
        '/manage-model' : (context) => ModelDashboard(),
        '/anomaly-quarantine' : (context) => AnomalyDashboard(),
      },
    );
  }
}