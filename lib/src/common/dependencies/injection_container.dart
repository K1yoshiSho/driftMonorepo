import 'package:cache/cache.dart';
import 'package:get_it/get_it.dart';
import 'package:repositories/repositories.dart';
import 'package:state/blocs.dart';

Future<void> setupIoc() async {
  final getIt = GetIt.I;
  await initBloc(getIt);
  await initCache(getIt);
  await initRepositories(getIt);
}
