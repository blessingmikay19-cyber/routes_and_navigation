import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentViewmodel extends ChangeNotifier {
  final Student _student = Student(name: "none");

  String get name => _student.name;

  void updateName(String newName) {
    _student.name = newName;
    notifyListeners(); //tells UI to rebuild when the name changes
  }
}
