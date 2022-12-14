import 'package:flutter/material.dart';
import 'package:flutter_introduction/screens/stateful_home_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Todo stateless widget tiene un metodo build y espera que regrese un widget
  @override
  Widget build(BuildContext context) {
    //El widget es constante porque tiene contenido estatico , no dinamico
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatefulHomeScreen(),
    );
  }
}
