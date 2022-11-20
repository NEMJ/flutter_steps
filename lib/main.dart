import 'package:flutter/material.dart';
import '../15_login - 18_repository/pages/home_page.dart';
import '../15_login - 18_repository/pages/splash_page.dart';
import '../15_login - 18_repository/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash' : (_) => const SpashPage(),
        '/login' : (_) => LoginPage(),
        '/home' : (_) => const HomePage(),
      }
    );
  }
}