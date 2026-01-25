import 'package:flutter/material.dart';
import 'package:study_group_4/GridViewTask.dart';
import 'package:study_group_4/ListViewTask.dart';

class BottomNavigationTaskPage extends StatefulWidget {
  const BottomNavigationTaskPage({super.key});

  @override
  State<BottomNavigationTaskPage> createState() =>
      _BottomNavigationTaskPageState();
}

class _BottomNavigationTaskPageState extends State<BottomNavigationTaskPage> {
  List<Widget> _pages = [
    ListViewTaskPage(),
    GridViewTaskPage()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Grid"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
