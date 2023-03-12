import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Components Flutter"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(
                  menuOptions[index].icon,
                  color: AppTheme.primary,
                ),
                title: Text(menuOptions[index].name),
                onTap: () {
                  //! a way to naivate: is not recommended
                  //! some advantages: gives you a great control, you can implement animations

                  // final route = MaterialPageRoute(
                  //   builder: (context) => const ListView1Screen(),
                  // );
                  // Navigator.pushReplacement(context, route);

                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}

//! Navigator.push: agrega la pagina a la que navega al top del stack, permite regresar a la pagina anterior
//! Navigator.pushReplacement: al hacer la transicion a la nueva pagina, elimina la pagina anterior, no permite regresar
//! Navigator.pushNamed: Navega a la ruta correspondiente en base al nombre de la ruta declarada.
//! en caso de que la routa no exista utiliza 