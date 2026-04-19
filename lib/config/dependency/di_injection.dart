import 'package:get_it/get_it.dart';
import 'package:vachanapetty/features/data/datasources/sql_querys/sql_datasource.dart';
import 'package:vachanapetty/features/data/datasources/sql_querys/sql_datasourceimp.dart';
import 'package:vachanapetty/features/data/repository/sql_repository_imp.dart';
import 'package:vachanapetty/features/domain/repository/sql/sqlreppository.dart';
import 'package:vachanapetty/features/domain/usecases/get_all_data.dart';
import 'package:vachanapetty/features/domain/usecases/initializedb.dart';
import 'package:vachanapetty/features/presentation/bloc/quotes_bloc.dart';

GetIt di = GetIt.instance;

Future<void> init() async {
  /// sql datasources
  di.registerLazySingleton<SqlDatasource>(() => SqlDatasourceimp());

  /// Repositories
  di.registerLazySingleton<SqlRepository>(
      () => SqlRepositoryImpl(datasource: di.call()));

  /// use cases
  di.registerLazySingleton(() => GetAllData(repository: di.call()));
  di.registerSingleton(() => InitializeDatabase(repository: di.call()));

  /// bloc
  di.registerFactory(() => QuotesBloc(allData: di()));
}
