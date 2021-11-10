import 'package:flutter/material.dart';
import 'package:jayraj_task/table.dart';

import 'chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChartData(),
      ///To see the other page , change (home) to TableData
    );
  }
}
