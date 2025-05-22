import 'package:get_it/get_it.dart';
import 'package:vachanapetty/features/data/datasources/sql_querys/sql_datasource.dart';
import 'package:vachanapetty/features/data/datasources/sql_querys/sql_datasourceimp.dart';
import 'package:vachanapetty/features/data/repository/sql_repository_imp.dart';
import 'package:vachanapetty/features/domain/repository/sql/sqlreppository.dart';
import 'package:vachanapetty/features/domain/usecases/getrandomdata.dart';
import 'package:vachanapetty/features/domain/usecases/initializedb.dart';
import 'package:vachanapetty/features/presentation/bloc/quotes_bloc.dart';

GetIt di = GetIt.instance;

Future<void> init() async {
  // sql data
  di.registerLazySingleton<SqlDatasource>(() => SqlDatasourceimp());
  di.registerLazySingleton<Sqlreppository>(
      () => SqlRepositoryImpl(datasource: di.call()));
  di.registerLazySingleton(() => Getrandomdata(repository: di.call()));
  di.registerSingleton(() => Initializedb(repository: di.call()));
  // bloc
  di.registerFactory(() => QuotesBloc(di.call()));
}
