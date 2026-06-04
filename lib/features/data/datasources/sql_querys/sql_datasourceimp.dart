import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:vachanapetty/features/data/datasources/sql_querys/sql_datasource.dart';
import 'package:vachanapetty/features/data/models/quotes_datamodel.dart';

class SqlDatasourceimp extends SqlDatasource {
  // ? db name
  static const _dbName = "vachanapetty.db";

  // ? queries
  static const _fetchAllQuery = '''
    SELECT v.*, b.name_en, b.name_ml 
    FROM verses v 
    JOIN books b ON v.book_id = b.id 
    ORDER BY RANDOM() 
    LIMIT 1
  ''';

  static const _fetchByBookQuery = '''
    SELECT v.*, b.name_en, b.name_ml 
    FROM verses v 
    JOIN books b ON v.book_id = b.id 
    WHERE v.book_id = ? 
    ORDER BY RANDOM() 
    LIMIT 1
  ''';

  @override
  Future<Database> initializeDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, _dbName);

    final exists = await databaseExists(path);
    if (!exists) {
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      ByteData data = await rootBundle.load(url.join("assets", _dbName));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      debugPrint("opening existing database");
    }

    return await openDatabase(path, readOnly: true);
  }

  @override
  Future<QuotesDataModel?> fetchData({int? bookId}) async {
    try {
      final db = await initializeDatabase();

      final List<Map<String, dynamic>> quotesData = bookId != null
          ? await db.rawQuery(_fetchByBookQuery, [bookId])
          : await db.rawQuery(_fetchAllQuery);

      if (quotesData.isNotEmpty) {
        return QuotesDataModel.fromMap(quotesData.first);
      }
      return null;
    } catch (e, stack) {
      debugPrint("fetchData error: $e\n$stack");
      return null;
    }
  }
}
