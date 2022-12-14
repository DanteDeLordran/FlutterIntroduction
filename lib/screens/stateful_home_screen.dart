import 'package:flutter/material.dart';

import 'custom_floating_actions.dart';

class StatefulHomeScreen extends StatefulWidget {
  const StatefulHomeScreen({super.key});

  @override
  State<StatefulHomeScreen> createState() => _StatefulHomeScreenState();
}

class _StatefulHomeScreenState extends State<StatefulHomeScreen> {
  int contador = 0;

  void increase() => setState(() {
        contador++;
      });
  void decrease() => setState(() {
        contador--;
      });
  void reset() => setState(() {
        contador = 0;
      });

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
          'Lordran contador',
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
              'Nose xd',
              style: fontSize,
            ),
            Text(
              '$contador',
              style: fontSize,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}
