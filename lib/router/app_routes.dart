import 'package:ejercicio03/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.person_add),
    MenuOption(
        route: 'listview1',
        name: 'Listado Uno',
        screen: const ListViewScreenUno(),
        icon: Icons.list_alt_rounded),
    MenuOption(
        route: 'listview2',
        name: 'Listado Dos',
        screen: const ListViewScreenDos(),
        icon: Icons.list_sharp),
    MenuOption(
        route: 'alert',
        name: 'Pagina de Alerta',
        screen: const AlertScreen(),
        icon: Icons.align_vertical_bottom),
    MenuOption(
        route: 'card',
        name: 'Pagina de Tarjeta',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> AppRoutes = {};

    for (final option in menuOptions) {
      AppRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return AppRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListViewScreenUno(),
    'listview2': (BuildContext context) => const ListViewScreenDos(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
