import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter_7',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Program Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _isVisible = false;
  String _text = "GENAP";
  bool _isRed = true;

  void _incrementCounter() {
    setState(() {
      if (_counter == 0){
        _isVisible = true;
      }
      _counter++;
    });
    _getText();
  }

  void _decrementCounter() {
    setState(() {
      if (_counter == 1){
        _isVisible = false;
      }
      _counter--;
    });
    _getText();
  }

  void _getText(){
    setState(() {
      if (_counter % 2 == 0){
        _text = "GENAP";
        _isRed = true;
      } else {
        _text = "GANJIL";
        _isRed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_text',
              style: TextStyle(fontSize: 20, color: _isRed? Colors.red : Colors.blue),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding (
        padding: EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: _isVisible,
              child: FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
              ),
            ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ]
        ) 
      )
      
    );
  }
}
