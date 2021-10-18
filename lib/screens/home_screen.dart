import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_providers.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';
import '../main.dart';

void main() => runApp(MyApp());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final moviesProdider = Provider.of<MoviesProvider>(
        context); // Ve al arbol de widgets, encuentra el MoviesProvider y colocala en la instancia de moviesProvider

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Peliculas en Cine'),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //tarjeta principales
            CardSwiper(
              movies: moviesProdider.onDisplayMovies,
            ),

            //Listado HORIZONTAL DE PELICULAS
            MovieSlider(
              movies: moviesProdider.popularMovies,
              title: 'Populares', // Optional
            ),
          ],
        ),
      ),
    );
  }
}
