import 'package:flutter/material.dart';
import 'package:study_group_4/BottomNavigationTask.dart';
// import 'package:study_group_4/GridViewTask.dart';
// import 'package:study_group_4/BottomNavigationTask.dart';
// import 'package:study_group_4/ListViewTask.dart';
// import 'package:study_group_4/GridViewLive.dart';
// import 'package:study_group_4/ListViewLive.dart';
// import 'package:study_group_4/BottomNavigation.dart';
// import 'package:study_group_4/GridView.dart';
// import 'package:study_group_4/ListView.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: BottomNavigationTaskPage(),
    ));
  }
}
