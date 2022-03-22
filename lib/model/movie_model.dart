class MovieList {
  String title;
  String year;
  String rated;
  String released;
  String runtime;
  String genre;
  String director;
  String writer;
  String actors;
  String plot;
  String language;
  String country;
  String awards;
  String poster;
  String metascore;
  String imdbRating;
  String imdbVotes;
  String imdbID;
  String type;
  String response;
  List<String> images;

  MovieList(
      this.title,
      this.year,
      this.rated,
      this.released,
      this.runtime,
      this.genre,
      this.director,
      this.writer,
      this.actors,
      this.plot,
      this.language,
      this.country,
      this.awards,
      this.poster,
      this.metascore,
      this.imdbRating,
      this.imdbVotes,
      this.imdbID,
      this.type,
      this.response,
      this.images);

  static List<MovieList> getMovieList() => [
        MovieList(
          "Avatar",
          "2009",
          "PG-13",
          "18 Dec 2009",
          "162 min",
          "Action, Adventure, Fantasy",
          "James Cameron",
          "James Cameron",
          "Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang",
          "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
          "English, Spanish",
          "USA, UK",
          "Won 3 Oscars. Another 80 wins & 121 nominations.",
          "http://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_SX300.jpg",
          "83",
          "7.9",
          "890,617",
          "tt0499549",
          "movie",
          "True",
          [
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BNzM2MDk3MTcyMV5BMl5BanBnXkFtZTcwNjg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY2ODQ3NjMyMl5BMl5BanBnXkFtZTcwODg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxOTEwNDcxN15BMl5BanBnXkFtZTcwOTg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxMDg1Nzk1MV5BMl5BanBnXkFtZTcwMDk0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg"
          ],
        ),
        MovieList(
          "I Am Legend",
          "2007",
          "PG-13",
          "14 Dec 2007",
          "101 min",
          "Drama, Horror, Sci-Fi",
          "Francis Lawrence",
          "Mark Protosevich (screenplay), Akiva Goldsman (screenplay), Richard Matheson (novel), John William Corrington, Joyce Hooper Corrington",
          "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
          "Years after a plague kills most of humanity and transforms the rest into monsters, the sole survivor in New York City struggles valiantly to find a cure.",
          "English",
          "USA",
          "9 wins & 21 nominations.",
          "http://ia.media-imdb.com/images/M/MV5BMTU4NzMyNDk1OV5BMl5BanBnXkFtZTcwOTEwMzU1MQ@@._V1_SX300.jpg",
          "65",
          "7.2",
          "533,874",
          "tt0480249",
          "movie",
          "True",
          [
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
          ],
        ),
        MovieList(
          "The Wolf of Wall Street",
          "2013",
          "R",
          "25 Dec 2013",
          "180 min",
          "Biography, Comedy, Crime",
          "Martin Scorsese",
          "Terence Winter (screenplay), Jordan Belfort (book)",
          "Leonardo DiCaprio, Jonah Hill, Margot Robbie, Matthew McConaughey",
          "Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.",
          "English, French",
          "USA",
          "Nominated for 5 Oscars. Another 35 wins & 154 nominations.",
          "http://ia.media-imdb.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_SX300.jpg",
          "75",
          "8.2",
          "786,985",
          "tt0993846",
          "movie",
          "True",
          [
            "https://images-na.ssl-images-amazon.com/images/M/MV5BNDIwMDIxNzk3Ml5BMl5BanBnXkFtZTgwMTg0MzQ4MDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc0NzAxODAyMl5BMl5BanBnXkFtZTgwMDg0MzQ4MDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTExMDk1MDE4NzVeQTJeQWpwZ15BbWU4MDM4NDM0ODAx._V1_SX1500_CR0,0,1500,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTg3MTY4NDk4Nl5BMl5BanBnXkFtZTgwNjc0MzQ4MDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
            "https://images-na.ssl-images-amazon.com/images/M/MV5BMTgzMTg4MDI0Ml5BMl5BanBnXkFtZTgwOTY0MzQ4MDE@._V1_SY1000_CR0,0,1553,1000_AL_.jpg"
          ],
        ),
      ];
}
