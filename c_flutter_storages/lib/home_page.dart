import 'package:c_flutter_storages/database/database_sql.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _database();
  }

  Future<void> _database() async {
    final database = await DatabaseSqLite().openConnection();

    database.rawInsert('insert into produto values(null, ?)', ['caneta']);
    //var result = await database.query('categoria');
    //print(result);
    //var resultado = await database.rawQuery('select * from pessoa');
    //print(resultado);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(),
    );
  }
}
