class ProductsModel {
  final String id;
  final String name;
  final String description;
  final String productImage;
  final String catalog;
  final String cost;

  ProductsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.productImage,
    required this.catalog,
    required this.cost,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      productImage: json['productImage'],
      catalog: json['catalog'],
      cost: json['cost'],
    );
  }
}
