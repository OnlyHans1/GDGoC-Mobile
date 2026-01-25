import 'package:flutter/material.dart';
import 'package:study_group_4/GridView.dart';
import 'package:study_group_4/ListView.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  List<Widget> _pages = [
    ListViewPage(),
    GridViewPage(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "List View"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Grid View"),
        ],
        onTap: (index) {
          print("Pindah ke halaman index: $index");
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
