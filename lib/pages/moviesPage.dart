import 'package:first_flutter_app/modules/movies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoviesPage extends StatelessWidget{
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final movies = {"Avengers", "Eko", "Thudarum", "lokah", "Sarvam Maya"};

    final movieList = [
      const Movie(title: "Avengers", genre:"SC-FI", year: "2018", rating: "8.5"),
      const Movie(title: "Eko", genre:"Action", year: "2020", rating: "8.5"),
      const Movie(title: "Thudarum", genre:"Drama", year: "2022", rating: "8.5"),
      const Movie(title: "Lokah", genre:"SC-FI", year: "2024", rating: "8.5"),
      const Movie(title: "Sarvam Maya", genre:"Feel Good", year: "2026", rating: "8.5"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies Page"),
        titleTextStyle: TextStyle(
          fontSize: 24.0,
          color: Colors.black
        ),
        backgroundColor: Colors.lightGreenAccent,
        elevation: 8.0,
        shadowColor: Colors.black,
      ),
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (ctx, index) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child:ListTile(
              titleTextStyle: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
              subtitleTextStyle: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black
              ),
              leading: const Icon(Icons.movie),
              title: Text(movieList[index].title),
              subtitle: Text(movieList[index].genre),
              trailing: Text(movieList[index].rating),
              tileColor: Colors.lightBlue,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),

              onTap: (){
                print('Movie: ${movieList[index].title}');
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(movieList[index].title))
                );
              },
          ),
        ),
      ),
    );
  }
}