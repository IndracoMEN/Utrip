import "package:flutter/material.dart";
import 'package:utrip_project/Screens/drivers_screen.dart';
import 'package:utrip_project/Screens/home_screen.dart';
import 'package:utrip_project/Screens/login_screen.dart';
import 'package:utrip_project/models/driver.dart';
import 'package:utrip_project/widgets/Users_card.dart';

class DestinosList extends StatefulWidget {
  DestinosList({Key? key}) : super(key: key);

  @override
  State<DestinosList> createState() => _DestinosListState();
}

class _DestinosListState extends State<DestinosList> {
  @override
  Widget build(BuildContext context) {
    const elevation = 0.0;
    final borderRadius = BorderRadius.circular(8.0);
    const clipBehavior = Clip.antiAliasWithSaveLayer;
    //const splashColor = Colors.black26;
    const splashColor = Colors.amber;
    const size = MainAxisSize.min;
    const style = TextStyle(fontSize: 18.0, color: Colors.white);
    const double h = 200;
    const double w = 400;
    const background = Colors.white; //Color.fromARGB(255, 25, 3, 43);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: background,
          elevation: 0,
          centerTitle: true,
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu_rounded, color: Colors.indigo),
            );
          }),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                color: Colors.indigo,
              ),
            ),
          ],
          title: const Text(""
              //"Elige tu destino", style: TextStyle(color: Colors.black87),
              ),
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25)),
      body: ListView(
        children: [
          Container(height: 35),
          Row(
            children: [
              Container(
                width: 50,
                padding: const EdgeInsets.only(bottom: 35),
              ),
              const Text(
                "Hola Indra",
                style: TextStyle(color: Colors.indigo, fontSize: 30),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40, bottom: 20),
            child: Text(
              "¿A dónde vamos hoy?",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, bottom: 20),
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.indigo,
                  ),
                  Text("Destinos", style: TextStyle(color: Colors.indigo)),
                ],
              ),
            ),
          ),
          Material(
            color: background,
            elevation: elevation,
            borderRadius: borderRadius,
            clipBehavior: clipBehavior,
            child: InkWell(
              splashColor: splashColor,
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())),
              child: Column(
                mainAxisSize: size,
                children: [
                  Ink.image(
                    image: const NetworkImage(
                      "https://cdn.pixabay.com/photo/2022/03/14/20/54/city-7069010_640.jpg",
                    ),
                    height: h,
                    width: w,
                    fit: BoxFit.cover,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Delegación: Cuahutemoc", style: style),
                          Text("Ciudad de Mexico", style: style)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(height: 35),
          Material(
            color: background,
            elevation: elevation,
            borderRadius: borderRadius,
            clipBehavior: clipBehavior,
            child: InkWell(
              splashColor: splashColor,
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen())),
              child: Column(
                mainAxisSize: size,
                children: [
                  Ink.image(
                    image: const NetworkImage(
                      "https://cdn.pixabay.com/photo/2021/10/19/17/55/soumaya-museum-6724229_640.jpg",
                    ),
                    height: h,
                    width: w,
                    fit: BoxFit.cover,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Delegación: Miguel Hidalgo", style: style),
                          Text("Ciudad de Mexico", style: style)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(height: 35),
          Material(
            color: background,
            elevation: elevation,
            borderRadius: borderRadius,
            clipBehavior: clipBehavior,
            child: InkWell(
              splashColor: splashColor,
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DriversScreen())),
              child: Column(
                mainAxisSize: size,
                children: [
                  Ink.image(
                    image: const NetworkImage(
                      "https://cdn.pixabay.com/photo/2022/02/21/17/36/night-7027273_640.jpg",
                    ),
                    height: h,
                    width: w,
                    fit: BoxFit.cover,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Delegación: Iztapalapa", style: style),
                          Text("Ciudad de Mexico", style: style)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(height: 35),
          Material(
            color: background,
            elevation: elevation,
            borderRadius: borderRadius,
            clipBehavior: clipBehavior,
            child: InkWell(
              splashColor: splashColor,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Users_Card(driver: Driver()))),
              child: Column(
                mainAxisSize: size,
                children: [
                  Ink.image(
                    image: const NetworkImage(
                      "https://cdn.pixabay.com/photo/2016/10/13/04/35/mexico-1736752_640.jpg",
                    ),
                    height: h,
                    width: w,
                    fit: BoxFit.cover,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Municipio: Ecatepec", style: style),
                          Text("Estado de México", style: style),
                        ],
                      ),
                    ),
                  ),
                  Container(height: 35)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
