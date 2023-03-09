import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = 'Olá, Mundo!';
  int counter = 0;

  void changeText() {
    setState(() {
      if (text == 'Olá, Mundo!') {
        text = ':)';
        counter++;
      } else {
        text = 'Olá, Mundo!';
        counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu Primeiro App'),
          backgroundColor: Colors.pink,
        ),
        backgroundColor: Colors.pink[50],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  width: 200,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.pink[100],
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        const BoxShadow(color: Colors.pink, blurRadius: 5)
                      ]),
                  child: Text(text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink[900],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Calibri',
                      )),
                      ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pink),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: changeText,
                child: Text('Olá'),
              ),
              Text(counter.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink[900],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Calibri',
                      ))
            ],
          ),
        ),
      ),
    );
  }
}


                 