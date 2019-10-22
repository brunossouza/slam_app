import 'package:flutter/material.dart';
import 'package:slam/widgets/charts/line_chart_sample1.dart';
import 'package:slam/widgets/charts/line_chart_sample2.dart';

import '../widgets/custom_drawer.dart';

class ChartScreen extends StatefulWidget {
  static const String routeName = '/charts';
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gráficos'),
      ),
      drawer: CustomDrawer(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Chart 00',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              LineChartSample1(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Chart 01',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              LineChartSample2(),
            ],
          ),
        ),
      ),
    );
  }
}
