import 'package:cache/src/daos/products_dao.dart';
import 'package:cache/src/database.dart';
import 'package:get_it/get_it.dart';

Future<void> initCache(GetIt getIt) async {
  getIt
    ..registerSingleton(AppDb())
    ..registerSingleton(ProductsDao(
      getIt.get<AppDb>(),
    ));
}
