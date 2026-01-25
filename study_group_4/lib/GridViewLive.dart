import 'package:flutter/material.dart';

class GridViewLivePage extends StatefulWidget {
  const GridViewLivePage({super.key});

  @override
  State<GridViewLivePage> createState() => _GridViewLivePageState();
}

class _GridViewLivePageState extends State<GridViewLivePage> {
  List<Map<String, dynamic>> makanan = [
    {"nama": "Pisang Goreng", "harga": 13000, "enak": true},
    {"nama": "Cempedak Goreng", "harga": 10000, "enak": true},
    {"nama": "Nangka Goreng", "harga": 2000, "enak": true},
    {"nama": "Es Krim Goreng", "harga": 5000, "enak": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.builder(
          itemCount: makanan.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1),
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                color: Colors.yellow,
                child: Text(makanan[index]["nama"]),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(makanan[index]["nama"]),
                        content: Text("Harga: ${makanan[index]["harga"]}"),
                      );
                    });
              },
            );
          },
        ),
      ),
    );
  }
}
