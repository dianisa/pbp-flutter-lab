import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/tambah_budget.dart';
import 'package:counter_7/page/daftar_budget.dart';
import 'package:counter_7/page/mywatchlist.dart';
import 'package:counter_7/model/watch_list.dart';

class Detail extends StatelessWidget {
  final WatchList movie;

  const Detail({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
                title: const Text('Detail'),
            ),
            drawer: Drawer(
              child: Column(
                children: [
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
                    title: const Text('mywatchlist'),
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
            body: Center(child: Column(children: <Widget>[
              const SizedBox(
                      height: 20,
                      width: 100,
                  ),
              Text(
                  movie.fields.title,
                  style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  ),
              ),
              const SizedBox(
                      height: 40,
                      width: 100,
                  ),
              RichText(
                text: TextSpan(
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: "Release Date: ", style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "${movie.fields.releaseDate}\n\n"),
                            const TextSpan(text: "Rating: ", style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "${movie.fields.rating}/5\n\n"),
                            const TextSpan(text: "Status: ", style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: "${movie.fields.watched? "Watched" : "Didn't watch"}\n\n"),
                            const TextSpan(text: "Review: \n", style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: movie.fields.review),
                          ]
                          
                        ),
                      ),
                  const SizedBox(
                      height: 40,
                      width: 100,
                  ),
                  TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) => const MyWatchList()),
                              );
                          },
                          child: const Text(
                            "Back",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
              
              ],
            )
            

            
            )
        
    );
  }
}