import 'package:get_it/get_it.dart';
import 'package:repositories/src/products/products_repository.dart';

Future<void> initRepositories(GetIt getIt) async {
  getIt.registerSingleton(
    () => ProductsRepository(
      getIt.get(),
    ),
  );
}
