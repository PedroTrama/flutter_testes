import 'package:flutter/material.dart';
void main(){
  //WidgetsApp //MaterialApp //CupertionApp
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
       body: Container(
        child: Text("Hello, World!"),
       ),
    );
  }
}