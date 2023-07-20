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
        title: Text("Meu primeiro app"),
      ),
      body: Center(
        child: Text(
          "Contador\n$count",
          textAlign: TextAlign.center,
        )
      ),
      bottomSheet: Row(
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              decrement();
            },
          ),
          TextButton(
            onPressed: () {
              reset();
            },
            child: Text('Reiniciar'),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              increment();
            },
          )
        ]
      )
    );
  }
}