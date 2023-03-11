import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({super.key});

  final options = const [
    "fantasy",
    "call of duty",
    "god of war",
    "resident evil"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List View Tipo 1")),
      body: ListView(children: [
        // ! "..." destructura los elementos de la lista(si no estariamos tratando de renderizar la lista completa y causaria error)
        ...options
            .map((game) => ListTile(
                  title: Text(game),
                  trailing: const Icon(Icons.arrow_circle_right_outlined),
                ))
            .toList()
      ]),
    );
  }
}
