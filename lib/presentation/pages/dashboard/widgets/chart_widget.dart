import 'package:broker_desk/constants.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key, required this.dataMap});

  final Map<String, double> dataMap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: defaultPadding / 2,
        bottom: defaultPadding / 2,
      ),
      child: SizedBox(
        height: 200,
        child: PieChart(
          dataMap: dataMap,
          chartType: ChartType.ring,
          centerText: 'Выдана 130',
        ),
      ),
    );
  }
}
