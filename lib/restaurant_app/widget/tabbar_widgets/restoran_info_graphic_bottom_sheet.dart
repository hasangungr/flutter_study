import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/restaurant_app/field/percent.dart';
import 'package:flutter_study/restaurant_app/field/pie_chart_painter.dart';
import 'package:get/get.dart';

class RestaurantInfoGraphicBottomSheet extends StatelessWidget {
  const RestaurantInfoGraphicBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> data = [
      PieChartSectionData(
        color: Colors.blue,
        value: 85,
      ),
      PieChartSectionData(
        value: 65,
        color: Color.fromARGB(255, 250, 62, 125),
      ),
      PieChartSectionData(color: Colors.red, value: 25)
    ];
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(12), right: Radius.circular(12))),
      height: Get.height / 1.5,
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(8),
                height: Get.height / 5,
                width: Get.width / 2,
                child: PieChart(
                  PieChartData(
                      borderData: FlBorderData(show: false),
                      sections: data,
                      centerSpaceRadius: 35,
                      sectionsSpace: 5),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    alignment: Alignment.center,
                    height: 25,
                    width: 75,
                    child: Text(
                      "Man",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(12)),
                    alignment: Alignment.center,
                    height: 25,
                    width: 75,
                    child: Text(
                      "Woman",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12)),
                    alignment: Alignment.center,
                    height: 25,
                    width: 75,
                    child: Text(
                      "Children",
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
          customGrapic(),
          percentCard(0.55, Colors.red),
          percentCard(0.80, Colors.green),
          Container(
            width: Get.width,
            height: Get.height / 4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0.0, end: 0.8),
                      duration: Duration(seconds: 3),
                      builder: (context, value, _) => Container(
                        margin: EdgeInsets.all(24),
                        height: 100,
                        width: 100,
                        child: Stack(fit: StackFit.expand, children: [
                          CircularProgressIndicator(
                            color: Colors.blue,
                            strokeWidth: 32,
                            value: value,
                            backgroundColor: Colors.grey,
                          ),
                          Center(
                            child: Text(
                              "data",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ]),
                      ),
                    ),
                    Text("Garden", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0.0, end: 0.8),
                      duration: Duration(seconds: 3),
                      builder: (context, value, _) => Container(
                        margin: EdgeInsets.all(24),
                        height: 100,
                        width: 100,
                        child: Stack(fit: StackFit.expand, children: [
                          CircularProgressIndicator(
                            color: Colors.blue,
                            strokeWidth: 24,
                            value: value,
                            backgroundColor: Colors.grey,
                          ),
                          Center(
                            child: Text(
                              "800",
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ]),
                      ),
                    ),
                    Text("Garden", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0.0, end: 0.8),
                      duration: Duration(seconds: 3),
                      builder: (context, value, _) => Container(
                        margin: EdgeInsets.all(24),
                        height: 100,
                        width: 100,
                        child: Stack(fit: StackFit.expand, children: [
                          CircularProgressIndicator(
                            color: Colors.blue,
                            strokeWidth: 18,
                            value: value,
                            backgroundColor: Colors.grey,
                          ),
                          Center(
                            child: Text("%80", style: TextStyle(fontSize: 24)),
                          )
                        ]),
                      ),
                    ),
                    Text("Garden", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Column(
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0.0, end: 0.8),
                      duration: Duration(seconds: 3),
                      builder: (context, value, _) => Container(
                        margin: EdgeInsets.all(24),
                        height: 100,
                        width: 100,
                        child: Stack(fit: StackFit.expand, children: [
                          CircularProgressIndicator(
                            color: Colors.blue,
                            strokeWidth: 18,
                            value: value,
                            backgroundColor: Colors.grey,
                          ),
                          Center(
                            child: Text("%80", style: TextStyle(fontSize: 24)),
                          )
                        ]),
                      ),
                    ),
                    Text("Garden", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
