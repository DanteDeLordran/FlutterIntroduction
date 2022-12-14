import 'package:flutter/material.dart';

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () => resetFn(),
            child: const Icon(
              Icons.refresh,
            )),
        FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () => decreaseFn(),
            child: const Icon(
              Icons.remove,
            )),
        FloatingActionButton(
            backgroundColor: Colors.pink,
            onPressed: () => increaseFn(),
            child: const Icon(
              Icons.add,
            )),
      ],
    );
  }
}
