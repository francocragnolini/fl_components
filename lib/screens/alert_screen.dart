import 'dart:developer';

import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  displayDialog(BuildContext context) {
    log("Hello World from Alert Screen Dialog");
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          title: const Text('Titulo'),
          elevation: 5,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Este es el contenido de la Alerta"),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              ),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  //! dos maneras de hacerlo
                  // Navigator.of(context).pop();
                  Navigator.pop(context);
                },
                child: const Text("Cancelar"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => displayDialog(context),
          //! referencia
          // style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.red,
          //     shape: const StadiumBorder(),
          //     elevation: 0),
          child: const Text("Mostrar Alerta"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.close),
      ),
    );
  }
}
