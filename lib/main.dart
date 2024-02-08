import 'package:cs125/tab_one.dart';
import 'package:cs125/tab_two.dart';
import 'package:flutter/material.dart';
//https://www.youtube.com/watch?v=XSheN4Lkhpc
void main() {
  runApp(const MyApp());
  runApp(const FormExampleApp());
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: const TabBarView(
            children: [
              MyApp(),
              FormExampleApp(),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}