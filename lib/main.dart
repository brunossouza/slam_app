import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/devices_provider.dart';
import './screens/about_screen.dart';
import './screens/devices_list_screen.dart';
import './screens/configuration_screen.dart';
import './screens/charts_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        theme: ThemeData.dark(),
        home: DevicesListScreen(),
        routes: {
          DevicesListScreen.routeName: (cxt) => DevicesListScreen(),
          ChartScreen.routeName: (cxt) => ChartScreen(),
          ConfigurationScreen.routeName: (cxt) => ConfigurationScreen(),
          AboutScreen.routeName: (cxt) => AboutScreen(),
        },
      ),
    );
  }
}
