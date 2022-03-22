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
          return Stack(
            children: [
              MovieCard(context, myMovies[index]),
              MovieImage(myMovies[index].images[3]),
            ],
          );
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

  TextStyle MainTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: Colors.grey,
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
          left: 60,
        ),
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      movieDetials.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  Text(
                    movieDetials.imdbRating,
                    style: MainTextStyle(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    movieDetials.year,
                    style: MainTextStyle(),
                  ),
                  Text(
                    movieDetials.runtime,
                    style: MainTextStyle(),
                  ),
                  Text(
                    movieDetials.rated,
                    style: MainTextStyle(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget MovieImage(String imageUrl) {
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
        left: 10,
      ),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
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
      backgroundColor: Colors.white,
      body: MovieDetailsThimblend(thimblend: movies!.images[3]),
    );
  }
}

class MovieDetailsThimblend extends StatelessWidget {
  final String? thimblend;

  const MovieDetailsThimblend({Key? key, this.thimblend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(thimblend!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 80,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }
}
