import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Map<String, dynamic>> mahasiswa = [
    {"nama": "Rhaihan", "kelas": "SE-01-01", "nilai": 90},
    {"nama": "Jingga", "kelas": "SE-01-02", "nilai": 80},
    {"nama": "Farhan", "kelas": "SE-01-03", "nilai": 60},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: mahasiswa.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(mahasiswa[index]["nama"]),
              subtitle: Text(mahasiswa[index]["kelas"]),
              trailing: Icon(Icons.chevron_right),
            );
          },
        ),
      ),
    );
  }
}
