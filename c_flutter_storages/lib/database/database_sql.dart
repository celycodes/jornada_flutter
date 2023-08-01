import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseSqLite {
  //Future<Database> openConnection() async {
  Future<void> openConnection() async {
    final databasePath = await getDatabasesPath();
    final databaseFinalPath = join(databasePath, 'SQLITE_EXAMPLE');
    await openDatabase(
      databaseFinalPath,
      version: 1,
      // onCreate -> chamado somente no momento de criação do banco de dados (na 1° vez que carrega o app)
      onCreate: (Database db, int version) {},
      // onUpgrade -> será chamado sempre que houver uma alteração no verison (incrementa [1 -> 2])
      onUpgrade: (Database db, int oldVersion,int version) {},
      // onDowngrade -> será chamado sempre que houver uma alteração no verison para menos (decrementa [2 -> 1])
      onDowngrade: (Database db, int oldVersion,int version) {},
    );
  }
}
