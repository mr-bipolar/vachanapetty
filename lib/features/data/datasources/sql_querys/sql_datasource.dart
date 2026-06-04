import 'package:sqflite/sqflite.dart';
import 'package:vachanapetty/features/data/models/quotes_datamodel.dart';

abstract class SqlDatasource {
  Future<Database> initializeDatabase();
  Future<QuotesDataModel?> fetchData({int? bookId});
}
