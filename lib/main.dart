import 'package:flutter/material.dart';
import 'package:tympe_app/screens/auth_pages/login.dart';
import 'package:tympe_app/screens/auth_pages/signup.dart';
import 'package:tympe_app/screens/homepage.dart';
import 'package:tympe_app/screens/newtask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tympe App',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 33, 31, 171)),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/newtask': (context) => NewTaskPage(),
      },
    );
  }
}
