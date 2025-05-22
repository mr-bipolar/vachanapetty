import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:vachanapetty/config/errors/failures.dart';
import 'package:vachanapetty/features/data/datasources/sql_querys/sql_datasource.dart';
import 'package:vachanapetty/features/data/models/quotes_dto.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';

class SqlDatasourceimp extends SqlDatasource {
  // ? db name
  static const _dbName = "quotes.db";
  // ? query
  static const _dataQuery = '''
          SELECT * From quotes 
          ORDER by random() 
          LIMIT 1 ''';

  @override
  Future<Database> intializedatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, "quotes.db");
    //! check db exist or not
    final exists = await databaseExists(path);
    if (!exists) {
      //! Check directory exists
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

  //* Random quotes from db
  @override
  Future<Either<Failures, QuotesData>> getrandomdata() async {
    try {
      final db = await intializedatabase();
      const String query = _dataQuery;
      List<Map<String, dynamic>> quotesData = await db.rawQuery(query);
      if (quotesData.isNotEmpty) {
        final quote = QuotesDto.fromMap(quotesData.first).toEntity();
        return right(quote);
      } else {
        return left(
            const Failures.clientfailure(errorMessage: "No data found."));
      }
    } catch (e) {
      return const Left(
          Failures.serverfailure(errorMessage: "Error occurred. Try again."));
    }
  }
}
