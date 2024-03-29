import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:utrip_project/UI/input_decoration.dart';
import 'package:utrip_project/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackgorund(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 250),
            CardContainer(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "Ingresa",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: 30),
                  _LoginForm()
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Crear una nueva cuenta",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      )),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: 'example@email.com',
                  labelText: 'correo electronico',
                  prefixIcon: Icons.alternate_email_rounded),
            ),
            const SizedBox(height: 50),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  hintText: '*******',
                  labelText: 'contraseña',
                  prefixIcon: Icons.lock),
            ),
            const SizedBox(height: 50),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.amberAccent[700],
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  child: const Text(
                    "Ingresar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
