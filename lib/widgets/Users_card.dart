import "package:flutter/material.dart";
import 'package:utrip_project/models/driver.dart';

class Users_Card extends StatelessWidget {
  final Driver driver;

  const Users_Card({super.key, required this.driver});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: 185,
        decoration: _borderCard(),
        child: Stack(
          //Modificar STACK por Row, el diseño debe ser imagen del conductor del lado derecho,
          //datos del conductor con fondo blanco en el lado izquierdo
          alignment: Alignment.bottomLeft,
          children: [
            _backgroundImage(driver.foto),
            usersDetails(title: driver.nombre!, subTitle: driver.facultad!)
          ],
        ),
      ),
    );
  }

  BoxDecoration _borderCard() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 7),
            )
          ]);
}

class usersDetails extends StatelessWidget {
  final String title;
  final String subTitle;

  const usersDetails({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        height: 70,
        decoration: _buildBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => const BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25), topRight: Radius.circular(25)));
}

class _backgroundImage extends StatelessWidget {
  final String? url;
  const _backgroundImage(this.url);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 400,
        child: FadeInImage(
          placeholder: AssetImage("assets/jar-loading.gif"),
          image: NetworkImage(url!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
