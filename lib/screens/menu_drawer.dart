import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.maxFinite,
            height: 100.0,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 218, 90, 68)),
            child: TextButton(
              child: const Text(
                "Mi Perfil",
                style: TextStyle(
                    color: Color.fromARGB(255, 221, 216, 216),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () => {
                /* Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ejemplo())) */
              },
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 100.0,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 218, 90, 68)),
            child: TextButton(
              child: const Text(
                "Pedido Actual",
                style: TextStyle(
                    color: Color.fromARGB(255, 221, 216, 216),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () => {
                /* Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ejemplo())) */
              },
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 100.0,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 218, 90, 68)),
            child: TextButton(
              child: const Text(
                "Mi Historial",
                style: TextStyle(
                    color: Color.fromARGB(255, 221, 216, 216),
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () => {
                /* Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ejemplo())) */
              },
            ),
          ),
        ],
      )),
    );
  }
}
