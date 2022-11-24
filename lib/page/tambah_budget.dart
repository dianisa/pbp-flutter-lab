import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/daftar_budget.dart';
import 'package:counter_7/page/mywatchlist.dart';

List<List<String>> data = [];

class TambahBudget extends StatefulWidget {
    const TambahBudget({super.key});

    @override
    State<TambahBudget> createState() => _TambahBudget();
}

class _TambahBudget extends State<TambahBudget> {
  final _formKey = GlobalKey<FormState>();
  List<String> _jenisBudget = ['Pemasukan', 'Pengeluaran'];
  String _jenis = 'Pemasukan';
  String _judul = '';
  String _nominal = '';

  void _save() {
    setState(() {
      data.add([_judul, _nominal, _jenis]);
    });
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
                title: const Text('Tambah Budget'),
            ),
            // Menambahkan drawer menu
            drawer: Drawer(
                child: Column(
                  children: [
                    // Menambahkan clickable menu
                    ListTile(
                      title: const Text('Counter'),
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
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Contoh: Makanan",
                                    labelText: "Judul",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                onChanged: (String? value) {
                                    setState(() {
                                        _judul = value!;
                                    });
                                },
                                onSaved: (String? value) {
                                    setState(() {
                                        _judul = value!;
                                    });
                                },
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                        return 'Judul tidak boleh kosong!';
                                    }
                                    return null;
                                },
                            ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Contoh: 50000",
                                    labelText: "Nominal",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                    ),
                                ),
                                onChanged: (String? value) {
                                    setState(() {
                                        _nominal = value!;
                                    });
                                },
                                onSaved: (String? value) {
                                    setState(() {
                                        _nominal = value!;
                                    });
                                },
                                validator: (String? value) {
                                  try {
                                    if (value == null || value.isEmpty) {
                                        return 'Nominal tidak boleh kosong!';
                                    }
                                    int.parse(value);
                                  } catch(e){
                                      return 'Nominal harus berupa angka!';
                                  }
                                    return null;
                                },
                            ),
                        ),
                        ListTile(
                          title: const Text(
                              'Pilih Jenis',
                          ),
                          trailing: DropdownButton(
                              value: _jenis,
                              items: _jenisBudget.map((String items) {
                              return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                              );
                              }).toList(),
                              onChanged: (String? newValue) {
                              setState(() {
                                  _jenis = newValue!;
                              });
                              },
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _save();
                            }
                          },
                          child: const Text(
                            "Simpan",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                  ),
                ),
              ),
            ),
        );
  }
}