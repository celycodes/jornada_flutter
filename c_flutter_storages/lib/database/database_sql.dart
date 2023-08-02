// ignore_for_file: avoid_print

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
//import 'package:sqflite/sqlite_api.dart';

class DatabaseSqLite {
  Future<Database> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databaseFinalPath = join(databasePath, 'SQLITE_EXAMPLE');
    return await  openDatabase(
      databaseFinalPath,
      version: 3,
      onConfigure: (db) async {
        print('onConfigure sendo chamado');
        await db.execute('PRAGMA foreing_keys = ON');
      },
      // onCreate -> chamado somente no momento de criação do banco de dados (na 1° vez que carrega o app)
      onCreate: (Database db, int version) {
        print('onCreate chamado');
        final batch = db.batch();
        batch.execute('''
        create table teste(id Integer primary key autoincrement,
        nome varchar(100) 
        )
        ''');
        batch.commit();
      },
      // onUpgrade -> será chamado sempre que houver uma alteração no verison (incrementa [1 -> 2])
      onUpgrade: (Database db, int oldVersion, int version) {
        print('onUpgrade chamado');
        final batch = db.batch();
        if (oldVersion == 1) {
          batch.execute('''
          create table produto(id Integer primary key autoincrement,
          nome varchar(100) 
          )
          ''');
        }
        if (oldVersion == 2) {
          batch.execute('''
          create table pessoa(id Integer primary key autoincrement,
          nome varchar(100) 
          )
          ''');
        }
        batch.commit();
      },
      // onDowngrade -> será chamado sempre que houver uma alteração no verison para menos (decrementa [2 -> 1])
      onDowngrade: (Database db, int oldVersion, int version) {
        print('onDowngrade chamado');
        final batch = db.batch();
        if (oldVersion == 2) {
          batch.execute('''
          drop table produto
          ''');
        }
        batch.commit();
      },
    );
  }
}
