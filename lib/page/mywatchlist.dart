import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/tambah_budget.dart';
import 'package:counter_7/page/daftar_budget.dart';
import 'package:counter_7/page/detail.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/watch_list.dart';

class MyWatchList extends StatefulWidget {
    const MyWatchList({super.key});

    @override
    State<MyWatchList> createState() => _MyWatchList();
}

class _MyWatchList extends State<MyWatchList> {

  Future<List<WatchList>> fetchWatchList() async {
        var url = Uri.parse('https://tugas-pbp-dian.herokuapp.com/mywatchlist/json/');
        var response = await http.get(
        url,
        headers: {
            "Access-Control-Allow-Origin": "*",
            "Content-Type": "application/json",
        },
        );

        var data = jsonDecode(utf8.decode(response.bodyBytes));

        List<WatchList> listWatchList = [];
        for (var d in data) {
        if (d != null) {
            listWatchList.add(WatchList.fromJson(d));
        }
        }

        return listWatchList;
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
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
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWatchList()),
                  );
                },
              ),
            ],
          ),
        ),
      body: FutureBuilder(
        future: fetchWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
            } else {
            if (!snapshot.hasData) {
                return Column(
                children: const [
                    Text(
                    "Tidak ada Watch list!",
                    style: TextStyle(
                        color: Color(0xff59A5D8),
                        fontSize: 20),
                    ),
                    SizedBox(height: 8),
                ],
                );
            } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index)=> Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0
                        )
                        ]
                    ),
                    child: InkWell(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(
                              "${snapshot.data![index].fields.title}",
                              style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              ),
                          ),
                          ],
                      ),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detail(movie: snapshot.data![index])));
                      }
                      )
                    )
                );
            }
            }
        }
    )
    );
  }
}