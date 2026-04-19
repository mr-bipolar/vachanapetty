import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart';
import 'package:vachanapetty/config/errors/failures.dart';
import 'package:vachanapetty/features/data/datasources/sql_querys/sql_datasource.dart';
import 'package:vachanapetty/features/data/models/quotes_datamodel.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';
import 'package:vachanapetty/features/domain/repository/sql/sqlreppository.dart';

class SqlRepositoryImpl implements SqlRepository {
  final SqlDatasource datasource;

  SqlRepositoryImpl({required this.datasource});
  @override
  Future<Either<Failures, List<QuotesDataEntity>>> fetchData() async {
    try {
      final response = await datasource.fetchData(); // returns List<QuotesData>

      if (response.isNotEmpty) {
        final entityList = response.map((e) => e.toEntity()).toList();
        return right(entityList);
      }

      return left(
        const Failures.clientfailure(errorMessage: "Empty data"),
      );
    } catch (e) {
      return left(
        Failures.serverfailure(errorMessage: e.toString()),
      );
    }
  }

  @override
  Future<Database> initializeDatabase() async {
    return await datasource.initializeDatabase();
  }
}
