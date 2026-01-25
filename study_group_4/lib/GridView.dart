import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<Map<String, dynamic>> mahasiswa = [
    {"nama": "Rhaihan", "kelas": "SE-01-01", "nilai": 90},
    {"nama": "Jingga", "kelas": "SE-01-02", "nilai": 80},
    {"nama": "Farhan", "kelas": "SE-01-03", "nilai": 60},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: mahasiswa.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue[100],
            child: Center(
              child: Text(mahasiswa[index]["nama"]),
            ),
          );
        },
      ),
    );
  }
}
