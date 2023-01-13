import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:utrip_project/Screens/screens.dart';
import 'package:utrip_project/services/driver_service.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DriversService())],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Listado App",
        initialRoute: 'destinos',
        routes: {
          'login': (_) => LoginScreen(),
          'home': (_) => HomeScreen(),
          'drivers': (_) => DriversScreen(),
          'destinos': (_) => DestinosList()
        },
        theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor:
                Colors.white) //Color.fromARGB(255, 25, 3, 43)),
        );
  }
}
