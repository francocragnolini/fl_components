import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final List<MenuOption> menuOptions = [
    MenuOption(
        route: 'home',
        name: "Home Screen",
        screen: const HomeScreen(),
        icon: Icons.home_filled),
    MenuOption(
        route: 'listview1',
        name: "ListView 1",
        screen: const ListView1Screen(),
        icon: Icons.list_rounded),
    MenuOption(
        route: 'listview2',
        name: "ListView 2",
        screen: const ListView2Screen(),
        icon: Icons.list_outlined),
    MenuOption(
        route: 'alert',
        name: "Alert ",
        screen: const AlertScreen(),
        icon: Icons.warning_amber),
    MenuOption(
        route: 'card',
        name: "Card ",
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
    MenuOption(
        route: 'avatar',
        name: "Circle Avatar",
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  //! usar este en lugar de getAppRoutes
  //! esta manera esta perfectamente correcta
  //! NO USAR: getAppRoutes() - List menuOptions
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   "home": (context) => const HomeScreen(),
  //   "listview1": (context) => const ListView1Screen(),
  //   "listview2": (context) => const ListView2Screen(),
  //   "alert": (context) => const AlertScreen(),
  //   "card": (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    log(settings.toString());
    //! return a route
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
