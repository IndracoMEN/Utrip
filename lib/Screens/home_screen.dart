import "package:flutter/material.dart";
import 'package:utrip_project/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conductores"),
        backgroundColor: Colors.indigo[900],
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          child: Users_Card(),
          onTap: () => Navigator.pushNamed(context, 'drivers'),
        ),
      ),
    );
  }
}
