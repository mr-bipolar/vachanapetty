import 'package:dartz/dartz.dart';
import 'package:sqflite/sqflite.dart';
import 'package:vachanapetty/config/errors/failures.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';

abstract class Sqlreppository {
  Future<Database> intializedatabase();
  Future<Either<Failures, QuotesData>> getrandomdata();
}
