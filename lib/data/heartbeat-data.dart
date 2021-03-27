import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/dtos/heartbeat.dart';
import 'package:hackathon/utils/dtime-util.dart';

class HeartbeatData {
  static List<Heartbeat> heartbeats = [
    Heartbeat(generateDateAgnosticTime24Format(0), 3, ColorUtil.fromDartColor(Colors.blue)),
    Heartbeat(generateDateAgnosticTime24Format(3), 3, ColorUtil.fromDartColor(Colors.blue)),
    Heartbeat(generateDateAgnosticTime24Format(6), 2, ColorUtil.fromDartColor(Colors.red)),
    Heartbeat(generateDateAgnosticTime24Format(9), 3, ColorUtil.fromDartColor(Colors.blue)),
    Heartbeat(generateDateAgnosticTime24Format(12), 3, ColorUtil.fromDartColor(Colors.blue)),
    Heartbeat(generateDateAgnosticTime24Format(15), 3, ColorUtil.fromDartColor(Colors.blue)),
    Heartbeat(generateDateAgnosticTime24Format(18), 3, ColorUtil.fromDartColor(Colors.blue)),
    Heartbeat(generateDateAgnosticTime24Format(21), 3, ColorUtil.fromDartColor(Colors.blue)),
    Heartbeat(generateDateAgnosticTime24Format(24), 3, ColorUtil.fromDartColor(Colors.blue)),
  ];
}