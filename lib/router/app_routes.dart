import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final List<MenuOption> menuOptions = [
    //! comentado para que no se vea en la lista de aplicaciones
    // MenuOption(
    //     route: 'home',
    //     name: "Home Screen",
    //     screen: const HomeScreen(),
    //     icon: Icons.home_filled),
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
    MenuOption(
        route: 'animated_screen',
        name: "Animated Screen",
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_filled_outlined),
    MenuOption(
        route: 'inputs_screen',
        name: "Inputs Screens",
        screen: InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'slider_checks',
        name: "Sliders and Checks",
        screen: const SliderScreen(),
        icon: Icons.slideshow_outlined),
    MenuOption(
        route: 'list_view_builder',
        name: "ListView Builder",
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
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
