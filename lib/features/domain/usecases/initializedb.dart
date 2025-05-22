import 'package:sqflite/sqflite.dart';
import 'package:vachanapetty/features/domain/repository/sql/sqlreppository.dart';

class Initializedb {
  final Sqlreppository repository;
  Initializedb({
    required this.repository,
  });
  Future<Database> call() async => repository.intializedatabase();
}
