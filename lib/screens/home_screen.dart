import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';
import '../main.dart';

void main() => runApp(MyApp());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        body: Column(
          children: [
            CardSwiper()

            //Listado HORIZONTAL DE PELICULAS
          ],
        ));
  }
}
