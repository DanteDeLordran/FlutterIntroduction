import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override //El buildcontext es el arbol de widgets
  Widget build(BuildContext context) {
    TextStyle fontSize = const TextStyle(fontSize: 25);

    //El scaffold es la ventana en la que viene el contenido
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 4, //Quita el sombreado que pone debajo del widget
        title: Text(
          'Titulo del appbar',
          style: fontSize,
        ),
      ),
      body: Center(
        child: Column(
          //Alinea en Y
          mainAxisAlignment: MainAxisAlignment.center,
          //Alinea en X y por defecto esta centrado
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Deliver features faster',
              style: fontSize,
            ),
            Text(
              'Craft beautiful UIs',
              style: fontSize,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {},
      ),
    );
  }
}
