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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu primeiro app"),
      ),
      body: Center(
        child: Text(
          "Contador\n0",
          textAlign: TextAlign.center,
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }

}