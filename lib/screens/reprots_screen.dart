import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ReprotsScreen extends StatefulWidget {
  const ReprotsScreen({super.key});

  @override
  State<ReprotsScreen> createState() => _ReprotsScreenState();
}

class _ReprotsScreenState extends State<ReprotsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/oo.jpg',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'Reports',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(width: 50), // To balance the Row
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Money In',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              '+ \$3,456.98',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.trending_up, color: Colors.pinkAccent),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16), // Spacing between the two containers
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Money Out',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              '- \$567.25',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.trending_up, color: Colors.purple),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24), // Add some space before the chart
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monthly Spending',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16),
                    Expanded(
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.spaceAround,
                          maxY: 600,
                          barTouchData: BarTouchData(enabled: false),
                          titlesData: FlTitlesData(
                            show: true,
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget:
                                    (double value, TitleMeta meta) {
                                  const style = TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  );
                                  switch (value.toInt()) {
                                    case 0:
                                      return Text('JAN', style: style);
                                    case 1:
                                      return Text('FEB', style: style);
                                    case 2:
                                      return Text('MAR', style: style);
                                    case 3:
                                      return Text('APR', style: style);
                                    case 4:
                                      return Text('MAY', style: style);
                                    case 5:
                                      return Text('JUN', style: style);
                                    default:
                                      return Text('', style: style);
                                  }
                                },
                              ),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget:
                                    (double value, TitleMeta meta) {
                                  return Text(
                                    value.toInt().toString(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          gridData: FlGridData(show: true),
                          borderData: FlBorderData(
                            show: true,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          barGroups: [
                            BarChartGroupData(x: 0, barRods: [
                              BarChartRodData(toY: 300, color: Colors.pink)
                            ]),
                            BarChartGroupData(x: 1, barRods: [
                              BarChartRodData(toY: 500, color: Colors.blue)
                            ]),
                            BarChartGroupData(x: 2, barRods: [
                              BarChartRodData(toY: 200, color: Colors.green)
                            ]),
                            BarChartGroupData(x: 3, barRods: [
                              BarChartRodData(toY: 350, color: Colors.orange)
                            ]),
                            BarChartGroupData(x: 4, barRods: [
                              BarChartRodData(toY: 450, color: Colors.purple)
                            ]),
                            BarChartGroupData(x: 5, barRods: [
                              BarChartRodData(toY: 300, color: Colors.yellow)
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
