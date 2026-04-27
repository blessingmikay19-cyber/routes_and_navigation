import 'package:flutter/material.dart';
import 'package:routes_navigation_2026/routes/routes_manager.dart';

class ConfirmView extends StatelessWidget {
  const ConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RoutesManager.home,
                  (route) => false,
                ); //remove all previous routes;
              },
              child: const Text("Back to Home"),
            ),
          ],
        ),
      ),
    );
  }
}
