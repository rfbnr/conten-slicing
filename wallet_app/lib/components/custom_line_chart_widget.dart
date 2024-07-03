import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomLineChartWidget extends StatefulWidget {
  const CustomLineChartWidget({
    super.key,
  });

  @override
  State<CustomLineChartWidget> createState() => _CustomLineChartWidgetState();
}

class _CustomLineChartWidgetState extends State<CustomLineChartWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final List<FlSpot> dataPoints = [
    const FlSpot(0, 60),
    const FlSpot(1, 140),
    const FlSpot(2, 90),
    const FlSpot(3, 160),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: SizedBox(
        height: 300,
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return LineChart(
              duration: const Duration(milliseconds: 250),
              LineChartData(
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipColor: (touchedSpot) =>
                        Colors.blueGrey.withOpacity(0.9),
                  ),
                  handleBuiltInTouches: true,
                ),
                minX: 0,
                maxX: 3,
                minY: 0,
                maxY: 250,
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 22,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        const style = TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        );
                        switch (value.toInt()) {
                          case 0:
                            return const Text(
                              'Nov',
                              style: style,
                            );
                          case 1:
                            return const Text(
                              'Dec',
                              style: style,
                            );
                          case 2:
                            return const Text(
                              'Jan',
                              style: style,
                            );
                          case 3:
                            return const Text(
                              'Feb',
                              style: style,
                            );
                          default:
                            return const Text('');
                        }
                      },
                    ),
                  ),
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                ),
                gridData: const FlGridData(
                  show: false,
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: dataPoints
                        .map(
                            (spot) => FlSpot(spot.x, spot.y * _animation.value))
                        .toList(),
                    shadow: Shadow(
                      color: Colors.black.withOpacity(0.8),
                      blurRadius: 60,
                      offset: const Offset(0, 10),
                    ),
                    isCurved: true,
                    color: kPrimaryColor,
                    barWidth: 4,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(
                      show: true,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
