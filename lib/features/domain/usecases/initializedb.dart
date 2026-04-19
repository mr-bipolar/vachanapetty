import 'package:sqflite/sqflite.dart';
import 'package:vachanapetty/features/domain/repository/sql/sqlreppository.dart';

class InitializeDatabase {
  final SqlRepository repository;
  InitializeDatabase({
    required this.repository,
  });
  Future<Database> call() async => repository.initializeDatabase();
}
