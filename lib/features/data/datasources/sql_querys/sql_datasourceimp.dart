import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:vachanapetty/features/data/datasources/sql_querys/sql_datasource.dart';
import 'package:vachanapetty/features/data/models/quotes_datamodel.dart';

class SqlDatasourceimp extends SqlDatasource {
  // ? db name
  static const _dbName = "quotes.db";
  // ? query
  static const _fetchQuery = 'SELECT * From quotes';

  @override
  Future<Database> initializeDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, "quotes.db");
    // check db exist or not
    final exists = await databaseExists(path);
    if (!exists) {
      // Check directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}
      //* copy from asset
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
  Future<List<QuotesDataModel>> fetchData() async {
    try {
      final db = await initializeDatabase();
      const String query = _fetchQuery;

      final List<Map<String, dynamic>> quotesData = await db.rawQuery(query);

      if (quotesData.isNotEmpty) {
        return quotesData.map((e) => QuotesDataModel.fromMap(e)).toList();
      }
      return <QuotesDataModel>[];
    } catch (e, stack) {
      debugPrint("fetchData error: $e\n$stack");
      return <QuotesDataModel>[];
    }
  }
}
