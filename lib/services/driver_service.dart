import 'package:flutter/material.dart';
import 'package:utrip_project/models/driver.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DriversService extends ChangeNotifier {
  final String _baseUrl = 'utrip-64854-default-rtdb.firebaseio.com';
  final List<Driver> drivers = [];
  bool isLoading = true;

  DriversService() {
    this.loadDriver();
  }

  Future<List<Driver>> loadDriver() async {
    this.isLoading = true;
    notifyListeners();
    final url = Uri.https(_baseUrl, 'Conductores.json');
    final res = await http.get(url);

    final Map<String, dynamic> driversMap = json.decode(res.body);

    driversMap.forEach((key, value) {
      final tempDriver = Driver.fromMap(value);
      tempDriver.id = key;
      this.drivers.add(tempDriver);
    });

    this.isLoading = false;
    notifyListeners();
    return this.drivers;
  }
}
