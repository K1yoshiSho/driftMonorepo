import 'package:cache/src/database.dart';
import 'package:cache/src/tables/products_data_model.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';
part 'products_dao.g.dart';

@DriftAccessor(tables: [
  ProductsDataModel,
])
@lazySingleton
class ProductsDao extends DatabaseAccessor<AppDb> with _$ProductsDaoMixin {
  ProductsDao(AppDb db) : super(db);

  Future<void> insertProduct(ProductsModel product) => into(productsDataModel).insert(product.toInsertProducts());

  Future<List<ProductsModel>> getAllProducts() async {
    final items = await select(productsDataModel).get();
    final result = items.map((e) => e.getProducts()).toList();
    return result;
  }

  Future<void> deleteAllProducts() => delete(productsDataModel).go();

  Future<void> deleteProduct(String id) {
    return (delete(productsDataModel)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Future updateProduct(Product product) => update(products).replace(product);
  // Future deleteProduct(Product product) => delete(products).delete(product);
}

extension on ProductsModel {
  ProductsDataModelData toInsertProducts() {
    return ProductsDataModelData(
      id: id,
      name: name,
      description: description,
      productImage: productImage,
      catalog: catalog,
      cost: cost,
    );
  }
}

extension on ProductsDataModelData {
  ProductsModel getProducts() {
    return ProductsModel(
      id: id,
      name: name,
      description: description,
      productImage: productImage,
      catalog: catalog,
      cost: cost,
    );
  }
}
