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
      backgroundColor: Colors.teal[100],
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MovieDetails(movieName: movies[index]);
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// New Routgh
class MovieDetails extends StatelessWidget {
  final String? movieName;

  const MovieDetails({Key? key, this.movieName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieName!),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal[100],
    );
  }
}
