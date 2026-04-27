import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentViewmodel extends ChangeNotifier {
  final Student _student = Student(name: "", phone: ""); //initial empty student

  String get name => _student.name;
  String get phone => _student.phone;

  void updateName(String newName) {
    _student.name = newName;
    notifyListeners(); //tells UI to rebuild when the name changes
  }

  void updatePhone(String newPhone) {
    _student.phone = newPhone;
    notifyListeners(); //tells UI to rebuild when the phone changes
  }
}
