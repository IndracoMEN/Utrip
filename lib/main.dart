import "package:flutter/material.dart";
import 'package:utrip_project/Screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Listado App",
      initialRoute: 'home',
      routes: {
        'login': (_) => LoginScreen(),
        'home': (_) => HomeScreen(),
        'drivers': (_) => DriversScreen()
      },
      theme: ThemeData.light()
          .copyWith(scaffoldBackgroundColor: Colors.deepPurple[900]),
    );
  }
}
