import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

Widget customGrapic() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(12),
        height: 250,
        child: LineChart(
          LineChartData(
            minX: 8,
            minY: 0,
            maxX: 24,
            maxY: 300,
            backgroundColor: Colors.white10,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(
                    8,
                    25,
                  ),
                  FlSpot(11, 35),
                  FlSpot(12.30, 85),
                  FlSpot(14, 101),
                  FlSpot(15.30, 168),
                  FlSpot(18, 250),
                  FlSpot(20, 101),
                  FlSpot(21, 120),
                  FlSpot(24, 55),
                ],
                isCurved: true,
                barWidth: 3,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                  color: Colors.blueAccent,
                ),
              ),
            ],
            gridData: FlGridData(
              show: true,
              drawHorizontalLine: false,
              drawVerticalLine: true,
              getDrawingVerticalLine: (value) {
                return FlLine(color: Colors.grey, strokeWidth: 0.8);
              },
            ),
            titlesData: FlTitlesData(
              //     bottomTitles: AxisTitles(sideTitles: SideTitles()),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
          ),
        ),
      ),
    ],
  );
}


