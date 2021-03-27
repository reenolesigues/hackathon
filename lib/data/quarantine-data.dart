import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/dtos/anomaly.dart';
import 'package:hackathon/utils/dtime-util.dart';

class QuarantineData {
  static List<Anomaly> quarantineData = [
    Anomaly(generateDateAgnosticTime24Format(0), 1, ColorUtil.fromDartColor(Colors.yellow)),
    Anomaly(generateDateAgnosticTime24Format(3), 1, ColorUtil.fromDartColor(Colors.yellow)),
    Anomaly(generateDateAgnosticTime24Format(6), 1, ColorUtil.fromDartColor(Colors.yellow)),
    Anomaly(generateDateAgnosticTime24Format(9), 0, ColorUtil.fromDartColor(Colors.yellow)),
    Anomaly(generateDateAgnosticTime24Format(12), 0, ColorUtil.fromDartColor(Colors.yellow)),
    Anomaly(generateDateAgnosticTime24Format(15), 2, ColorUtil.fromDartColor(Colors.yellow)),
    Anomaly(generateDateAgnosticTime24Format(18), 1, ColorUtil.fromDartColor(Colors.yellow)),
    Anomaly(generateDateAgnosticTime24Format(21), 0, ColorUtil.fromDartColor(Colors.yellow)),
    // Anomaly(generateDateAgnosticTime24Format(24), 1, ColorUtil.fromDartColor(Colors.yellow)),
  ];
}