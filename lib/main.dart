import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      // home: const CardScreen(),
      // ! Navegacion 1.0
      initialRoute: AppRoutes.initialRoute,
      routes: {
        "home": (context) => const HomeScreen(),
        "listview1": (context) => const ListView1Screen(),
        "listview2": (context) => const ListView2Screen(),
        "alert": (context) => const AlertScreen(),
        "card": (context) => const CardScreen(),
      },

      // ! en caso de que alguna de las rutas no exista
      // ! debe regresar o retornar una ruta
      onGenerateRoute: (settings) {
        print(settings);
        //! return a route
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      },
    );
  }
}
