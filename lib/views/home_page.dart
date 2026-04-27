import 'package:flutter/material.dart';
//import 'package:routes_navigation_2026/routes/routes.dart';
import 'package:routes_navigation_2026/routes/routes_manager.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              RoutesManager.details,
              arguments: "Hello from Home", //dynamic data
            );
          },
          child: const Text("Go to Details (Dynamic Route)"),
        ),
      ),
    );
  }
}
