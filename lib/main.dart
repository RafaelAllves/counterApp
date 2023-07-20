import 'package:flutter/material.dart';

void main() {
  print("Hello World");
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.deepPurple
    ),
    home: HomePage()
  ));
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void increment() {
    count++;
    setState(() {});
  }

  void decrement() {
    count--;
    setState(() {});
  }

  void reset() {
    count = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: Center(
        child: Text(
          "$count",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 200)
        )
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            iconSize: 60,
            onPressed: () {
              decrement();
            },
          ),
          TextButton(
            onPressed: () {
              reset();
            },
            child: Text('RESET', style: TextStyle(fontSize: 30)),
          ),
          IconButton(
            icon: Icon(Icons.add),
            iconSize: 60,
            onPressed: () {
              increment();
            },
          ),
        ],
      )
    );
  }
}