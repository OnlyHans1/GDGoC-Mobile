import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'api/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> _posts = [];
  bool _loading = false;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  Future<void> _getPosts() async {
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );

      if (response.statusCode == 200) {
        final data = await jsonDecode(response.body);

        setState(() {
          _posts = List<Post>.from(data.map((x) => Post.fromJson(x)));
          _loading = false;
        });
      }
    } catch (e) {}
  }

  Future<void> _createPost() async {
    if (_titleController.text.isEmpty || _bodyController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Data Kosong")));
      return;
    }

    try {
      final response = await http.post(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        headers: {"Content-type": "application/json"},
        body: jsonEncode({
          "title": _titleController.text,
          "body": _bodyController.text,
          "userId": "999",
        }),
      );

      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Berhasil Posting!")));

        setState(() {
          _posts.insert(
              0,
              Post(
                  id: 999,
                  title: _titleController.text,
                  body: _bodyController.text));
        });

        _titleController.clear();
        _bodyController.clear();
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    _getPosts();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GDG Simple Social")),
      body: _loading
          ? CircularProgressIndicator()
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                        labelText: "Title", border: OutlineInputBorder()),
                  ),
                  TextField(
                    controller: _bodyController,
                    decoration: InputDecoration(
                        labelText: "Apa yang kamu pikirkan",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _createPost,
                    child: Text("Posting Sekarang"),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _posts.length,
                      itemBuilder: (context, index) {
                        final post = _posts[index];
                        return Card(
                          margin: EdgeInsets.all(14),
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Text(post.id.toString()),
                            ),
                            title: Text(
                              post.title,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(post.body),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
