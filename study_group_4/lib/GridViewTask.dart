import 'package:flutter/material.dart';

class GridViewTaskPage extends StatefulWidget {
  const GridViewTaskPage({super.key});

  @override
  State<GridViewTaskPage> createState() => _GridViewTaskPageState();
}

class _GridViewTaskPageState extends State<GridViewTaskPage> {
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
      body: Container(
        child: GridView.builder(
          itemCount: film.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1
          ),
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                color: film[index]["status"] ? Colors.green[200] : Colors.red[200],
                child: Text(film[index]["judul"])
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(film[index]["judul"]),
                      content: Text("Genre: ${film[index]["genre"]} ${film[index]["rating"]}"),
                    );
                  }
                );
              },
            );
          },
        )
      )
    );
  }
}