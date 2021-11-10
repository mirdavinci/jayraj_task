// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'icons/r_icon_icons.dart';

class ChartData extends StatefulWidget {
  const ChartData({Key? key}) : super(key: key);

  @override
  _ChartDataState createState() => _ChartDataState();
}

class _ChartDataState extends State<ChartData> {
  bool clickAddButton = false;

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        colors: [Colors.grey],
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 0),
          FlSpot(2, 1),
          FlSpot(3, 0),
          FlSpot(4, -1),
          FlSpot(5, 0),
        ],
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(showTitles: false),
      );

  FlGridData get gridData => FlGridData(show: false);

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
            // tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
            ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
      ];

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  Widget rIconButton(IconData icon) {
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //app bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Create Post",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 1,
        ),
        leading: BackButton(
          onPressed: () {},
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: OutlineButton(
              onPressed: () {},
              child: const Text(
                "Post",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
      //body
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //card
                SizedBox(
                  height: 90,
                  child: Row(
                    children: const [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Jayraj Thakor",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                //
                const Text(
                  "test",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.3,
            minChildSize: 0.1,
            maxChildSize: 0.46,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //icon buttons
                      AnimatedContainer(
                          padding: const EdgeInsets.only(left: 10),
                          duration: const Duration(milliseconds: 300),
                          child: Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      clickAddButton = !clickAddButton;
                                    });
                                  },
                                  child: rIconButton(Icons.add)),
                              const SizedBox(
                                width: 10,
                              ),
                              clickAddButton
                                  ? Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              clickAddButton = !clickAddButton;
                                            });
                                          },
                                          child: InkWell(
                                            onTap: () {},
                                            child: rIconButton(RIcon.laugh),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              clickAddButton = !clickAddButton;
                                            });
                                          },
                                          child: InkWell(
                                            onTap: () {},
                                            child: rIconButton(Icons.image),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: rIconButton(
                                              Icons.bar_chart_outlined),
                                        ),
                                      ],
                                    )
                                  : Container()
                            ],
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      //chart
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Divider(
                                color: Colors.black45,
                                thickness: 3,
                                indent: 135,
                                endIndent: 135,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Market Emoton",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 1,
                            ),
                            const Text(
                              "test",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                              maxLines: 1,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            //chart
                            Container(
                              height: 150,
                              child: LineChart(
                                LineChartData(
                                  lineTouchData: lineTouchData1,
                                  gridData: gridData,
                                  titlesData: titlesData1,
                                  borderData: borderData,
                                  lineBarsData: lineBarsData1,
                                ),
                                swapAnimationDuration: const Duration(
                                    milliseconds: 150), // Optional
                                swapAnimationCurve: Curves.linear, // Optional
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ));
            },
          ),
        ],
      ),
    );
  }
}
