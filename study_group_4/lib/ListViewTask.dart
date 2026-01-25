import 'package:flutter/material.dart';

class ListViewTaskPage extends StatefulWidget {
  const ListViewTaskPage({super.key});

  @override
  State<ListViewTaskPage> createState() => _ListViewTaskPageState();
}

class _ListViewTaskPageState extends State<ListViewTaskPage> {
  List<Map<String, dynamic>> film = [
    {
      "judul": "The Fast And The Furious",
      "genre": "Action",
      "rating": 4,
      "status": false
    },
    {
      "judul": "Avengers: Endgame",
      "genre": "Superhero",
      "rating": 5,
      "status": true
    },
    {"judul": "Interstellar", "genre": "Sci-Fi", "rating": 5, "status": true},
    {"judul": "The Conjuring", "genre": "Horror", "rating": 4, "status": false},
    {"judul": "Parasite", "genre": "Thriller", "rating": 5, "status": true},
    {"judul": "La La Land", "genre": "Musical", "rating": 4, "status": false},
    {"judul": "John Wick", "genre": "Action", "rating": 4, "status": true},
    {"judul": "Coco", "genre": "Animation", "rating": 5, "status": true}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: film.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(
            Icons.movie,
            color: film[index]["status"] ? Colors.green[200] : Colors.red[200],
          ),
          title: Text(film[index]["judul"]),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  SizedBox(width: 4),
                  Text(film[index]["rating"].toString()),
                ],
              ),
              Text(film[index]["genre"]),
            ],
          ),
          trailing: Icon(
            film[index]["status"] ? Icons.check_circle : Icons.cancel,
            color: film[index]["status"] ? Colors.green[200] : Colors.red[200],
          ),
        );
      },
    ));
  }
}
