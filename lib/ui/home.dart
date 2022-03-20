import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List movies = [
      "Titanic",
      "Age of twomorrow",
      "12 Angry men",
      "Room",
      "Scar face",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.green,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.tealAccent,
                child: Text(
                  "M",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              trailing: const Icon(Icons.abc),
              subtitle: const Text("more"),
              title: Text(movies[index]),
            ),
          );
        },
      ),
    );
  }
}
