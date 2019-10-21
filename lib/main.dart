import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slam/providers/devices_provider.dart';
import './screens/devices_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DevicesProvider(),
        )
      ],
      child: MaterialApp(
        title: 'SLAM',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DevicesListScreen(),
      ),
    );
  }
}
