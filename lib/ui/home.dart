import 'package:flutter/material.dart';
import '../model/movie_model.dart';

class Movie extends StatelessWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MovieList> myMovies = MovieList.getMovieList();

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
        itemCount: myMovies.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.tealAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "IMDB",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      myMovies[index].imdbRating,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: const Icon(Icons.abc),
              subtitle: Text(myMovies[index].director),
              title: Text(myMovies[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MovieDetails(movieName: myMovies[index].title);
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
