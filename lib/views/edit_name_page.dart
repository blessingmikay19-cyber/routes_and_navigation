import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/student_viewmodel.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Name")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: controller),
            ElevatedButton(
              onPressed: () {
                context.read<StudentViewmodel>().updateName(controller.text);
                Navigator.pop(context); //go back to details page
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
