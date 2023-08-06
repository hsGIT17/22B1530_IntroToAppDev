import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel{

  String item;
  int amount;
  final charts.Color color;

  BarChartModel(
        {required this.item,
          required this.amount,
          required this.color,
        }
      );
}