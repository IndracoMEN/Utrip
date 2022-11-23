import "package:flutter/material.dart";

class AuthBackgorund extends StatelessWidget {
  final Widget child;

  const AuthBackgorund({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [_YellowBox(), _HeaderIcon(), child],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: const Icon(Icons.person_pin, color: Colors.white, size: 100),
      ),
    );
  }
}

class _YellowBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _yellowBackground(),
      child: Stack(children: [
        Positioned(top: 90, left: 30, child: _Bubble()),
        Positioned(top: -40, left: -30, child: _Bubble()),
        Positioned(top: -10, right: 40, child: _Bubble()),
        Positioned(bottom: -50, left: 30, child: _Bubble()),
        Positioned(bottom: 20, right: 100, child: _Bubble()),
        const Positioned(
            bottom: 40,
            right: 230,
            child: Text("Utrip",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)))
      ]),
    );
  }

  BoxDecoration _yellowBackground() => const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(235, 255, 229, 30),
        Color.fromARGB(238, 255, 199, 30),
      ]));
}

class _Bubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
