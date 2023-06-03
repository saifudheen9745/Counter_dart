import 'package:flutter/material.dart';
import 'package:sample_project2/screen_home.dart';

main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: ScreenHome(),
    );
  }
}
