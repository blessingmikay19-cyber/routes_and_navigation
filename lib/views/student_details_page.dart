import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routes_navigation_2026/routes/routes_manager.dart';
import '../viewmodels/student_viewmodel.dart';

class DetailsView extends StatelessWidget {
  final String message;
  const DetailsView({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Message: $message'), //dynamic route

            Consumer<StudentViewmodel>(
              builder: (context, vm, child) {
                return Text('Name: ${vm.name}'); //provider
              },
            ),

            Consumer<StudentViewmodel>(
              builder: (context, vm, child) {
                return Text('Phone: ${vm.phone}'); //provider
              },
            ),
            Text(''),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesManager.edit);
              },
              child: const Text("Edit Details"),
            ),
            Text(''),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesManager.confirm);
              },
              child: const Text("Confirm"),
            ),
            Text(''),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
