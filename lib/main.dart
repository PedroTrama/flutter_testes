import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.pink,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      backgroundColor: Colors.pink[50],
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.pink[100],
            border: Border.all(color: Colors.pink),
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Colors.pink, blurRadius: 5)]
          ),
          child: Text(
            "Hello, World!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.pink[900],
              fontWeight: FontWeight.bold,
              fontFamily: 'Calibri',
            ),
          ),
        ),
      ),
    );
  }
}
