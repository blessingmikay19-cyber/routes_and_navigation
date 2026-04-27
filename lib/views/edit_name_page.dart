import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/student_viewmodel.dart';

class EditView extends StatefulWidget {
  const EditView({super.key});

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController namecontroller = TextEditingController();
  late TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final studentVM = context.read<StudentViewmodel>();

    namecontroller.text = context.read<StudentViewmodel>().name;
    phoneController.text = context.read<StudentViewmodel>().phone;
  }

  @override
  void dispose() {
    namecontroller.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Details")),
      body: Form(
        key: _formKey,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Pre-fill the text field with the current name from ViewModel
            TextFormField(
              controller: namecontroller,
              decoration: InputDecoration(
                labelText: "Student Name",
                border: OutlineInputBorder(),
              ),
              //Add validation to ensure the name is not empty
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name cannot be empty';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Phone Number", 
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Phone number is required';
                }
                if (value.length != 10) {
                  return 'Phone number must be 10 digits';
                }
                if (!RegExp(r'^[0-9]+$').hasMatch(value)) {     
                  return 'Phone number must contain only digits';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, update the name in the ViewModel
                  context.read<StudentViewmodel>().updateName(namecontroller.text);
                  context.read<StudentViewmodel>().updatePhone(phoneController.text);
                  Navigator.pop(context); //go back to details page
                }
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
