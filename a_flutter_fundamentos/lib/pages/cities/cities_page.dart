import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'model/city.dart';

class CitiesPage extends StatefulWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  State<CitiesPage> createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  var cities = <City>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    final citiesJson = await rootBundle.loadString('assets/cities.json');
    setState(() {
      var citiesList = json.decode(citiesJson);
      cities = citiesList.map<City>((city)=> City.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          var city = cities[index];
          return ListTile(
            title: Text(city.city),
            subtitle: Text(city.state),
          );
        },
      ),
    );
  }
}
