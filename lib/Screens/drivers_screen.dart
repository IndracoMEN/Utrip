import 'package:flutter/material.dart';
import 'package:utrip_project/UI/input_decoration.dart';
import 'package:utrip_project/widgets/widgets.dart';

class DriversScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              const Drivers_image(),
              Positioned(
                top: 60,
                left: 30,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop,
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 60,
                right: 50,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop,
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          driversForm(),
          const SizedBox(height: 100)
        ],
      ),
    ));
  }
}

class driversForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: _buildBoxDecoration(),
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Nombre:', labelText: 'Ingresa tu nombre'),
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Facultad:',
                    labelText: 'Ingresa tu facultad de procedencia'),
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Delegación:',
                    labelText: 'Ingresa la delegación donde radicas'),
              ),
              const SizedBox(height: 30),
              SwitchListTile(
                title: const Text("Disponible"),
                value: true,
                onChanged: (value) {},
                activeColor: Colors.green,
              )
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
          ),
        ],
      );
}
