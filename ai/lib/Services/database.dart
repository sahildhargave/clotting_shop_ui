import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:ai/Services/jarvis_location_store_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await initDatabase();
    return _database;
  }

  initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();

    String path = join(documentDirectory.path, 'database.db');

    if (kDebugMode) {
      print('path :== $path');
    }
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        'CREATE TABLE jarvisevoices (id INTEGER , Title TEXT, date TEXT ,starttime TEXT , lasttime TEXT ,discription TEXT, PRIMARY KEY(id AUTOINCREMENT))');

    if (kDebugMode) {
      print('table create');
    }
  }

  Future<bool> isJarvis(String id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps =
        await db!.query('jarvisevoices', where: "id =?", whereArgs: [id]);
    return maps.isNotEmpty ? true : false;
  }

  Future addJarvis(Jarvisevoices jarvises) async {
    var db = await database;
    jarvises.id = await db!.insert(
      'jarvisevoices',
      jarvises.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print('data and successfully...${jarvises.title}');
    print('data and successfully...${jarvises.date}');
    print('data and successfully...${jarvises.startTime}');
    print('data and successfully...${jarvises.lastTime}');
    print('data and successfully...${jarvises.discription}');
    return Jarvisevoices;
  }

  Future<List<Map<String, dynamic>>> getJarvis() async {
    var db = await database;

    List<Map<String, dynamic>> maps =
        await db!.query('jarvisevoices', columns: [
      'id',
      'Title',
      'date',
      'starttime',
      'lasttime',
      'discription',
    ]);
    return maps;
  }

  Future<int> deleteJarvis(int id) async {
    print("object delete thyo==${id}");
    var db = await database;
    return await db!.delete(
      'jarvisevoices',
      where: 'id =?',
      whereArgs: [id],
    );
  }
}
