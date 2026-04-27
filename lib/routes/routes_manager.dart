import 'package:flutter/material.dart';
import 'package:routes_navigation_2026/views/home_page.dart';
import 'package:routes_navigation_2026/views/confirm_page.dart';
import 'package:routes_navigation_2026/views/edit_name_page.dart';
import 'package:routes_navigation_2026/views/student_details_page.dart';
//import 'views/home_view.dart';
//import 'views/details_view.dart';
//import 'views/edit_view.dart';
//import 'views/confirm_view.dart';

class RoutesManager {
  static const String home = '/';
  static const String edit = '/edit';
  static const String details = '/details';
  static const String confirm = '/confirm';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomeView());
      case edit:
        return MaterialPageRoute(builder: (_) => EditView());
      case details:
        final message = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => DetailsView(message: message));
      case confirm:
        return MaterialPageRoute(builder: (_) => ConfirmView());
      default:
        throw Exception("Route not found");
    }
  }
}
