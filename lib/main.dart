import 'package:flutter/material.dart';
import 'package:counter_7/page/tambah_budget.dart';
import 'package:counter_7/page/daftar_budget.dart';
import 'package:counter_7/page/mywatchlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'counter_7',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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
        title: const Text('counter_7'),
      ),
      // Menambahkan drawer menu
      drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman tambah budget
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const TambahBudget()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman daftar budget
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const DaftarBudget()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Watch List'),
                onTap: () {
                  // Route menu ke halaman My Watch List
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWatchList()),
                  );
                },
              ),
            ],
          ),
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
