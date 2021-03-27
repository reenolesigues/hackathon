

import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class Heartbeat {
  final DateTime timestamp;
  final int count;
  final Color barColor;

  Heartbeat(@required this.timestamp, @required this.count, @required this.barColor);
}