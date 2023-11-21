import 'package:flutter/material.dart';
import 'package:hellp/pages/CadPage.dart';
import 'package:hellp/pages/LoginPage.dart';
import 'package:hellp/pages/initPage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/init',
      routes: {
        '/init': (context) => InitPage(),
        '/cadastro': (context) => CadastroPage(),
        '/login': (context)=> LoginPage()
      },
    );
  }
}
