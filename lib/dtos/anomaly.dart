import 'package:charts_flutter/flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anomaly {
  final DateTime timestamp;
  final int count;
  final Color barColor;

  Anomaly(@required this.timestamp, @required this.count, @required this.barColor);
}