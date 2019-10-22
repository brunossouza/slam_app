import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/devices_provider.dart';
import './screens/about_screen.dart';
import './screens/devices_list_screen.dart';
import './screens/configuration_screen.dart';
import './screens/charts_screen.dart';
import './screens/device_configuration_screen.dart';
import './providers/theme_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DevicesProvider(),
        ),
        ChangeNotifierProvider.value(
          value: ThemeProvider(),
        )
      ],
      child: Consumer<ThemeProvider>(
        builder: (cxt, snapshot, child) {
          return MaterialApp(
            title: 'SLAM',
            theme: snapshot.theme,
            home: DevicesListScreen(),
            routes: {
              DevicesListScreen.routeName: (cxt) => DevicesListScreen(),
              ChartScreen.routeName: (cxt) => ChartScreen(),
              DeviceConfigurationScreen.routeName: (cxt) =>
                  DeviceConfigurationScreen(),
              ConfigurationScreen.routeName: (cxt) => ConfigurationScreen(),
              AboutScreen.routeName: (cxt) => AboutScreen(),
            },
          );
        },
      ),
    );
  }
}
