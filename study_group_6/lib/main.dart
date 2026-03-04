import 'package:flutter/material.dart';
// import 'package:study_group_6/home.dart';
import 'package:study_group_6/homeTask.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageTask(),
    );
  }
}
