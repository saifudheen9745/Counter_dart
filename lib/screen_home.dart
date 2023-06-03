import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              "Counter",
              style: TextStyle(fontSize: 30),
            ),
          ),
          toolbarHeight: 80.0,
        ),
        body: Center(
            child: Text(
          _counter.toString(),
          style: const TextStyle(
              color: Colors.blue, fontSize: 60, fontWeight: FontWeight.bold),
        )),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _counter = _counter + 1;
                });
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _counter = 0;
                });
              },
              child: const Icon(Icons.replay_rounded ),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (_counter != 0) {
                    _counter = _counter - 1;
                  }
                });
              },
              child: const Icon(Icons.horizontal_rule),
            )
          ],
        ));
  }
}
