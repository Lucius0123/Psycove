import 'package:atman/Fonts/helveticaFont.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalPerformance extends StatefulWidget {
  const TotalPerformance({super.key});

  @override
  State<TotalPerformance> createState() => _TotalPerformanceState();
}

class _TotalPerformanceState extends State<TotalPerformance> {
  List<double> TotalPerformence =
  [4.40, 5.50, 1.0, 6.0, 3,];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 190.h,
        child: BarChart(
          BarChartData(
            maxY: 6,
            minY: 0,
            gridData: const FlGridData(
              show: true,
              drawVerticalLine: false,
              drawHorizontalLine: true,
            ),
            titlesData: FlTitlesData(
              rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false)
              ),
              topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false)
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  interval: 1,
                  showTitles: true,
                  reservedSize: 42,
                  getTitlesWidget: (value, meta) {
                    String text ="";
                    switch (value.toInt()){
                      case 0:
                        text= 'Work \nGoals';
                      case 1:
                        text= 'Career\n Goal';
                      case 2:
                        text= 'Learning \nGoals';
                      case 3:
                        text= 'Family\n Goals';
                      case 4:
                        text= 'Self \n Goals';
                      default:
                        return Container();
                    }
                    return Helvetica(text:text,
                      alignment: TextAlign.center,

                          size: 11,
                          weight: FontWeight.w600
                      );
                  },
                ),
              ),
              leftTitles:  AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    String text ="";
                    switch (value.toInt()){
                      case 0:
                        text= '0';
                      case 1:
                        text= '1';
                      case 2:
                        text= '2';
                      case 3:
                        text= '3';
                      case 4:
                        text= '4';
                      case 5:
                        text= '5';
                      case 6:
                        text= '6';
                      default:
                        return Container();
                    }
                    return Helvetica(text:text,
                      alignment: TextAlign.center,

                          size: 15,
                          weight: FontWeight.w600
                      );
                  },
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            extraLinesData: ExtraLinesData(
              horizontalLines: [
                HorizontalLine(
                  y: 0,
                  color: Colors.grey,
                  strokeWidth: 2,
                ),
              ],
            ),
            groupsSpace: 30,
            barGroups: List.generate(
              TotalPerformence.length,
                  (index) => BarChartGroupData(
                x: index,
                barsSpace: 10,
                barRods: [
                  BarChartRodData(
                    toY: TotalPerformence[index],
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffF10086),
                        Color(0xff3F00F1),
                      ],
                    ),
                    width: 12,
                    borderRadius: BorderRadius.circular(0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}