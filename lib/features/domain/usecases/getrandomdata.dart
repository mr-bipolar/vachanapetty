import 'package:dartz/dartz.dart';
import 'package:vachanapetty/config/errors/failures.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';
import 'package:vachanapetty/features/domain/repository/sql/sqlreppository.dart';

class Getrandomdata {
  final Sqlreppository repository;
  Getrandomdata({required this.repository});
  Future<Either<Failures, QuotesData>> call() async =>
      await repository.getrandomdata();
}
