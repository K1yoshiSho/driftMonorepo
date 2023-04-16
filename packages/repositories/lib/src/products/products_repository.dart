import 'package:cache/cache.dart';
import 'package:models/models.dart';

class ProductsRepository {
  final ProductsDao productsDao;

  ProductsRepository(this.productsDao);

  Future<void> insertProduct(ProductsModel product) async {
    await productsDao.insertProduct(product);
  }

  Future<List<ProductsModel>> getAllProducts() async {
    final items = await productsDao.getAllProducts();
    return items.map((e) => e.toModel()).toList();
  }

  Future<void> deleteAllProducts() async {
    await productsDao.deleteAllProducts();
  }

  Future<void> deleteProduct(String id) async {
    await productsDao.deleteProduct(id);
  }

  // Future updateProduct(Product product) => update(products).replace(product);

  // Future deleteProduct(String id) => delete*;
}

extension on ProductsModel {
  ProductsModel toModel() {
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
