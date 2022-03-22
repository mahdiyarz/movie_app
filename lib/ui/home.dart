import 'package:flutter/material.dart';
import '../model/movie_model.dart';

class Movie extends StatelessWidget {
  const Movie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MovieList> myMovies = MovieList.getMovieList();

    // List movies = [
    //   "Titanic",
    //   "Age of twomorrow",
    //   "12 Angry men",
    //   "Room",
    //   "Scar face",
    // ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal[100],
      body: ListView.builder(
        itemCount: myMovies.length,
        itemBuilder: (BuildContext context, int index) {
          return MovieCard(context, myMovies[index]);
          // return Card(
          //   child: ListTile(
          //     leading: CircleAvatar(
          //       backgroundColor: Colors.tealAccent,
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           const Text(
          //             "IMDB",
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 10,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //           Text(
          //             myMovies[index].imdbRating,
          //             style: const TextStyle(
          //               color: Colors.white,
          //               fontSize: 15,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     trailing: const Icon(Icons.abc),
          //     subtitle: Text(myMovies[index].director),
          //     title: Text(myMovies[index].title),
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) {
          //             return MovieDetails(movieName: myMovies[index].title);
          //           },
          //         ),
          //       );
          //     },
          //   ),
          // );
        },
      ),
    );
  }

  Widget MovieCard(BuildContext context, MovieList movieDetials) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return MovieDetails(
            movieName: movieDetials.title,
            movies: movieDetials,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 5,
          right: 5,
        ),
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    movieDetials.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Rating:${movieDetials.imdbRating}/10",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    movieDetials.year,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    movieDetials.runtime,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    movieDetials.rated,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// New Routgh
class MovieDetails extends StatelessWidget {
  final String? movieName;
  final MovieList? movies;

  const MovieDetails({Key? key, this.movieName, this.movies}) : super(key: key);

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
