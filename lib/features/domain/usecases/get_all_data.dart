import 'package:dartz/dartz.dart';
import 'package:vachanapetty/config/errors/failures.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';
import 'package:vachanapetty/features/domain/repository/sql/sqlreppository.dart';

class GetAllData {
  final SqlRepository _repository;

  GetAllData({required SqlRepository repository}) : _repository = repository;
  Future<Either<Failures, QuotesDataEntity>> call({int? bookId}) async =>
      await _repository.fetchData(bookId: bookId);
}
