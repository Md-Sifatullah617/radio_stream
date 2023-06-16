import 'package:sqflite/sqflite.dart';

abstract class DatabaseService {
  static Database? _db;
  static int get _version => 1;
  static Future<void> init() async {
    if (_db != null) {
      return;
    }

    try {
      var databasePath = await getDatabasesPath();
    //   String _path = p.join(databasePath, "RadioApp.db");
    //   _db = await openDatabase(_path, version: _version, onCreate: onCreate);
    } catch (error) {
      print(error);
    }
  }

}
