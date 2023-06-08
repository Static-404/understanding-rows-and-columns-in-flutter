import 'package:flutter/material.dart';
// import 'package:questions/screens/GridTable.dart';
import 'package:questions/screens/ListTable.dart';
import 'package:questions/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
        'List': (context) => const ListTable(),
        // 'Grid': (context) => const GridTable(),
        'home': (context) => const HomePage(),
      },
    );
  }
}
