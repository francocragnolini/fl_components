import 'package:flutter/material.dart';
import 'package:flutter_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Components Flutter"),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.access_time_outlined),
                title: const Text("Nombre de ruta"),
                onTap: () {
                  //! a way to naivate: is not recommended
                  //! some advantages: gives you a great control, you can implement animations

                  // final route = MaterialPageRoute(
                  //   builder: (context) => const ListView1Screen(),
                  // );
                  // Navigator.pushReplacement(context, route);

                  Navigator.pushNamed(context, "alert");
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 100),
    );
  }
}

//! Navigator.push: agrega la pagina a la que navega al top del stack, permite regresar a la pagina anterior
//! Navigator.pushReplacement: al hacer la transicion a la nueva pagina, elimina la pagina anterior, no permite regresar
//! Navigator.pushNamed: Navega a la ruta correspondiente en base al nombre de la ruta declarada.
//! en caso de que la routa no exista utiliza 