import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo fulano'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2 / 2,
        children: List.generate(
          100,
          (val) {
            return GridTile(
              child: Container(
                child: Text(val.toString()),
                color: Colors.amber,
              ),
            );
          },
        ),
      ),
    );
  }
}
