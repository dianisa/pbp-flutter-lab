import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/tambah_budget.dart' as budget;
import 'package:counter_7/page/mywatchlist.dart';

class DaftarBudget extends StatefulWidget {
    const DaftarBudget({super.key});

    @override
    State<DaftarBudget> createState() => _DaftarBudget();
}

class _DaftarBudget extends State<DaftarBudget> {
  List<List<String>> _daftar = budget.data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
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
                    MaterialPageRoute(builder: (context) => const budget.TambahBudget()),
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
      body: Column(
          children: [
            for(var data in _daftar)...[
              Card(child: Padding(padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(children: [
                      Text(data[0],
                      style: const TextStyle(fontSize: 20),)
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(data[1],
                      style: const TextStyle(fontSize: 15),),
                      Text(data[2],
                      style: const TextStyle(fontSize: 15),)
                    ]),
                  ],
                )
              ))
            ]
          ],
      ),
    );
  }
}