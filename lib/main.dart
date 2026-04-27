import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:routes_navigation_2026/routes/routes_manager.dart';
import 'viewmodels/student_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StudentViewmodel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesManager.home,
        onGenerateRoute: RoutesManager.generateRoute,
      ),
    );
  }
}
