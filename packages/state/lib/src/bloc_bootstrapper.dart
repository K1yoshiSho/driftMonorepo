import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:state/src/add_product_bloc/add_product_bloc.dart';
import 'package:state/src/home_bloc/home_bloc.dart';

Future<void> initBloc(GetIt getIt) async {
  getIt
    ..registerSingleton<HomeBloc>(HomeBloc(getIt.get<ProductsRepository>()))
    ..registerSingleton<AddProductBloc>(AddProductBloc(getIt.get<ProductsRepository>()));
}
