import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart';
import 'package:vachanapetty/config/errors/failures.dart';
import 'package:vachanapetty/features/data/datasources/sql_querys/sql_datasource.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';
import 'package:vachanapetty/features/domain/repository/sql/sqlreppository.dart';

class SqlRepositoryImpl implements Sqlreppository {
  final SqlDatasource datasource;

  SqlRepositoryImpl({required this.datasource});

  @override
  Future<Database> intializedatabase() {
    return datasource.intializedatabase();
  }

  @override
  Future<Either<Failures, QuotesData>> getrandomdata() {
    return datasource.getrandomdata();
  }
}
