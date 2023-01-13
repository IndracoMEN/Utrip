import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:utrip_project/Screens/screens.dart';
import 'package:utrip_project/services/driver_service.dart';
import 'package:utrip_project/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final driversService = Provider.of<DriversService>(context);

    if (driversService.isLoading) return LoadingScreen();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Conductores"),
        backgroundColor: Colors.indigo[900],
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: driversService.drivers.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          child: Users_Card(
            driver: driversService.drivers[index],
          ),
          onTap: () => Navigator.pushNamed(context, 'drivers'),
        ),
      ),
    );
  }
}
