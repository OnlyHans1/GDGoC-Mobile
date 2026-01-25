import 'package:flutter/material.dart';

class ListViewLivePage extends StatefulWidget {
  const ListViewLivePage({super.key});

  @override
  State<ListViewLivePage> createState() => _ListViewLivePageState();
}

class _ListViewLivePageState extends State<ListViewLivePage> {
  List<Map<String, dynamic>> makanan = [
    {"nama": "Pisang Goreng", "harga": 13000, "enak": true},
    {"nama": "Cempedak Goreng", "harga": 10000, "enak": true},
    {"nama": "Nangka Goreng", "harga": 2000, "enak": true},
    {"nama": "Es Krim Goreng", "harga": 5000, "enak": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: makanan.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: Icon(Icons.food_bank),
              title: Text(makanan[index]['nama']),
              subtitle: Text(makanan[index]["harga"].toString()),
              trailing: Icon(Icons.chevron_right));
        },
      ),
    );
  }
}
