import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper{
  static Future<Database>getDatabase() async{
    return openDatabase(
      join(await getDatabasesPath(), 'motofinance.db'),
    onCreate: (db, version){
      db.execute(
        '''CREATE TABLE jornada(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
         descricao TEXT,
         inicio TEXT,
         fim TEXT,
          km_inicial REAL,
          km_final REAL,
           km_rodados REAL)'''
      );
      db.execute(
        ''' CREATE TABLE gahnos(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        jornada_id INTEGER,
        valor REAL,
        descricao TEXT,
        FOREIGN KEY(jornada_id) REFERENCES jornada(id))'''
      );

      db.execute(
        ''' CREATE TABLE despesas(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        jornada_id INTEGER,
        valor REAL,
        FOREIGN KEY(jornada_id) REFERENCES jornada(id))'''
      );
    },
    version: 1,

    );
  }
}