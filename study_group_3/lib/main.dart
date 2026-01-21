import 'package:flutter/material.dart';
import 'package:study_group_3/home_view.dart';
import 'package:study_group_3/home_view_task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widget'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
                child: Text('Materi'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15)),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => HomeViewTask()),
                    );
                  }, 
                  child: Text('Tugas'),
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15)),
                )
          ],
        )));
  }
}
