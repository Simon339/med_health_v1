// ignore_for_file: prefer_const_declarations

import 'package:med_health_v1/model/diarynote.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DiaryNotesDatabase {
  static final DiaryNotesDatabase instance = DiaryNotesDatabase._init();
  static Database? _database;
  DiaryNotesDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('diarynotes.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  Future _createDB(Database db, int version) async {
    const idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    const textType = 'TEXT NOT NULL';
    const boolType = 'BOOLEAN NOT NULL';
    const integerType = 'INTEGER NOT NULL';


    await db.execute('''
      CREATE TABLE $tableNotes(
        ${DiaryNotesFields.id} $idType,
        ${DiaryNotesFields.isImportant} $boolType,
        ${DiaryNotesFields.number} $integerType,
        ${DiaryNotesFields.title} $textType,
        ${DiaryNotesFields.description} $textType,
        ${DiaryNotesFields.time} $textType
      )
    ''');
  }

  Future<DiaryNotes> create(DiaryNotes diarynotes) async {
    final db = await instance.database;
    
    //final json = diarynotes.toJson();
    //final columns =
    //    '${DiaryNotesFields.title}, ${DiaryNotesFields.description}, ${DiaryNotesFields.time}';
    //final values =
    //    '${json[DiaryNotesFields.title]}, ${json[DiaryNotesFields.description]}, ${json[DiaryNotesFields.time]},';
    //final id = await db
    //    .rawInsert('INSERT INTO table_name ($columns) VALUES ($values)');
    final id = await db.insert(tableNotes, diarynotes.toJson());
    return diarynotes.copy(id: id);
  }

  Future<DiaryNotes> readDiaryNotes(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableNotes,
      columns: DiaryNotesFields.values,
      where: '${DiaryNotesFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return DiaryNotes.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<DiaryNotes>> readAllDiaryNotes() async {
    final db = await instance.database;
    final orderBy = '${DiaryNotesFields.time} ASC';
    //final result = await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');
    final result = await db.query(tableNotes, orderBy: orderBy);

    return result.map((json) => DiaryNotes.fromJson(json)).toList();
  }

  Future<int> update(DiaryNotes diarynotes) async {
    final db = await instance.database;

    return db.update(
      tableNotes, 
      diarynotes.toJson(),
      where: '${DiaryNotesFields.id} = ?',
      whereArgs: [diarynotes.id]
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return db.delete(
      tableNotes, 
      where: '${DiaryNotesFields.id} = ?',
      whereArgs: [id]
    );
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
