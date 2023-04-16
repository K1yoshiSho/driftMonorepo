import 'dart:io';
import 'package:cache/src/daos/products_dao.dart';
import 'package:cache/src/tables/products_data_model.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@DriftDatabase(
  daos: [ProductsDao],
  tables: [ProductsDataModel],
  include: {'custom_query/tables.drift'},
)
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
