// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class ProductsData extends Table
    with TableInfo<ProductsData, ProductsDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  ProductsData(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _productImageMeta =
      const VerificationMeta('productImage');
  late final GeneratedColumn<String> productImage = GeneratedColumn<String>(
      'productImage', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _catalogMeta =
      const VerificationMeta('catalog');
  late final GeneratedColumn<String> catalog = GeneratedColumn<String>(
      'catalog', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _costMeta = const VerificationMeta('cost');
  late final GeneratedColumn<String> cost = GeneratedColumn<String>(
      'cost', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, description, productImage, catalog, cost];
  @override
  String get aliasedName => _alias ?? 'productsData';
  @override
  String get actualTableName => 'productsData';
  @override
  VerificationContext validateIntegrity(Insertable<ProductsDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('productImage')) {
      context.handle(
          _productImageMeta,
          productImage.isAcceptableOrUnknown(
              data['productImage']!, _productImageMeta));
    }
    if (data.containsKey('catalog')) {
      context.handle(_catalogMeta,
          catalog.isAcceptableOrUnknown(data['catalog']!, _catalogMeta));
    }
    if (data.containsKey('cost')) {
      context.handle(
          _costMeta, cost.isAcceptableOrUnknown(data['cost']!, _costMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductsDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductsDataData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      productImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}productImage']),
      catalog: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}catalog']),
      cost: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cost']),
    );
  }

  @override
  ProductsData createAlias(String alias) {
    return ProductsData(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class ProductsDataData extends DataClass
    implements Insertable<ProductsDataData> {
  final int id;
  final String? name;
  final String? description;
  final String? productImage;
  final String? catalog;
  final String? cost;
  const ProductsDataData(
      {required this.id,
      this.name,
      this.description,
      this.productImage,
      this.catalog,
      this.cost});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || productImage != null) {
      map['productImage'] = Variable<String>(productImage);
    }
    if (!nullToAbsent || catalog != null) {
      map['catalog'] = Variable<String>(catalog);
    }
    if (!nullToAbsent || cost != null) {
      map['cost'] = Variable<String>(cost);
    }
    return map;
  }

  ProductsDataCompanion toCompanion(bool nullToAbsent) {
    return ProductsDataCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      productImage: productImage == null && nullToAbsent
          ? const Value.absent()
          : Value(productImage),
      catalog: catalog == null && nullToAbsent
          ? const Value.absent()
          : Value(catalog),
      cost: cost == null && nullToAbsent ? const Value.absent() : Value(cost),
    );
  }

  factory ProductsDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductsDataData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      productImage: serializer.fromJson<String?>(json['productImage']),
      catalog: serializer.fromJson<String?>(json['catalog']),
      cost: serializer.fromJson<String?>(json['cost']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'description': serializer.toJson<String?>(description),
      'productImage': serializer.toJson<String?>(productImage),
      'catalog': serializer.toJson<String?>(catalog),
      'cost': serializer.toJson<String?>(cost),
    };
  }

  ProductsDataData copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> productImage = const Value.absent(),
          Value<String?> catalog = const Value.absent(),
          Value<String?> cost = const Value.absent()}) =>
      ProductsDataData(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        description: description.present ? description.value : this.description,
        productImage:
            productImage.present ? productImage.value : this.productImage,
        catalog: catalog.present ? catalog.value : this.catalog,
        cost: cost.present ? cost.value : this.cost,
      );
  @override
  String toString() {
    return (StringBuffer('ProductsDataData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('productImage: $productImage, ')
          ..write('catalog: $catalog, ')
          ..write('cost: $cost')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, description, productImage, catalog, cost);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductsDataData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.productImage == this.productImage &&
          other.catalog == this.catalog &&
          other.cost == this.cost);
}

class ProductsDataCompanion extends UpdateCompanion<ProductsDataData> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> description;
  final Value<String?> productImage;
  final Value<String?> catalog;
  final Value<String?> cost;
  const ProductsDataCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.productImage = const Value.absent(),
    this.catalog = const Value.absent(),
    this.cost = const Value.absent(),
  });
  ProductsDataCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.productImage = const Value.absent(),
    this.catalog = const Value.absent(),
    this.cost = const Value.absent(),
  });
  static Insertable<ProductsDataData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? productImage,
    Expression<String>? catalog,
    Expression<String>? cost,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (productImage != null) 'productImage': productImage,
      if (catalog != null) 'catalog': catalog,
      if (cost != null) 'cost': cost,
    });
  }

  ProductsDataCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? description,
      Value<String?>? productImage,
      Value<String?>? catalog,
      Value<String?>? cost}) {
    return ProductsDataCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      productImage: productImage ?? this.productImage,
      catalog: catalog ?? this.catalog,
      cost: cost ?? this.cost,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (productImage.present) {
      map['productImage'] = Variable<String>(productImage.value);
    }
    if (catalog.present) {
      map['catalog'] = Variable<String>(catalog.value);
    }
    if (cost.present) {
      map['cost'] = Variable<String>(cost.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsDataCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('productImage: $productImage, ')
          ..write('catalog: $catalog, ')
          ..write('cost: $cost')
          ..write(')'))
        .toString();
  }
}

class $ProductsDataModelTable extends ProductsDataModel
    with TableInfo<$ProductsDataModelTable, ProductsDataModelData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsDataModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _productImageMeta =
      const VerificationMeta('productImage');
  @override
  late final GeneratedColumn<String> productImage = GeneratedColumn<String>(
      'product_image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _catalogMeta =
      const VerificationMeta('catalog');
  @override
  late final GeneratedColumn<String> catalog = GeneratedColumn<String>(
      'catalog', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _costMeta = const VerificationMeta('cost');
  @override
  late final GeneratedColumn<String> cost = GeneratedColumn<String>(
      'cost', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, description, productImage, catalog, cost];
  @override
  String get aliasedName => _alias ?? 'products_data_model';
  @override
  String get actualTableName => 'products_data_model';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProductsDataModelData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('product_image')) {
      context.handle(
          _productImageMeta,
          productImage.isAcceptableOrUnknown(
              data['product_image']!, _productImageMeta));
    } else if (isInserting) {
      context.missing(_productImageMeta);
    }
    if (data.containsKey('catalog')) {
      context.handle(_catalogMeta,
          catalog.isAcceptableOrUnknown(data['catalog']!, _catalogMeta));
    } else if (isInserting) {
      context.missing(_catalogMeta);
    }
    if (data.containsKey('cost')) {
      context.handle(
          _costMeta, cost.isAcceptableOrUnknown(data['cost']!, _costMeta));
    } else if (isInserting) {
      context.missing(_costMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ProductsDataModelData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductsDataModelData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      productImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_image'])!,
      catalog: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}catalog'])!,
      cost: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cost'])!,
    );
  }

  @override
  $ProductsDataModelTable createAlias(String alias) {
    return $ProductsDataModelTable(attachedDatabase, alias);
  }
}

class ProductsDataModelData extends DataClass
    implements Insertable<ProductsDataModelData> {
  final String id;
  final String name;
  final String description;
  final String productImage;
  final String catalog;
  final String cost;
  const ProductsDataModelData(
      {required this.id,
      required this.name,
      required this.description,
      required this.productImage,
      required this.catalog,
      required this.cost});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['product_image'] = Variable<String>(productImage);
    map['catalog'] = Variable<String>(catalog);
    map['cost'] = Variable<String>(cost);
    return map;
  }

  ProductsDataModelCompanion toCompanion(bool nullToAbsent) {
    return ProductsDataModelCompanion(
      id: Value(id),
      name: Value(name),
      description: Value(description),
      productImage: Value(productImage),
      catalog: Value(catalog),
      cost: Value(cost),
    );
  }

  factory ProductsDataModelData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductsDataModelData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      productImage: serializer.fromJson<String>(json['productImage']),
      catalog: serializer.fromJson<String>(json['catalog']),
      cost: serializer.fromJson<String>(json['cost']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'productImage': serializer.toJson<String>(productImage),
      'catalog': serializer.toJson<String>(catalog),
      'cost': serializer.toJson<String>(cost),
    };
  }

  ProductsDataModelData copyWith(
          {String? id,
          String? name,
          String? description,
          String? productImage,
          String? catalog,
          String? cost}) =>
      ProductsDataModelData(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        productImage: productImage ?? this.productImage,
        catalog: catalog ?? this.catalog,
        cost: cost ?? this.cost,
      );
  @override
  String toString() {
    return (StringBuffer('ProductsDataModelData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('productImage: $productImage, ')
          ..write('catalog: $catalog, ')
          ..write('cost: $cost')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, description, productImage, catalog, cost);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductsDataModelData &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.productImage == this.productImage &&
          other.catalog == this.catalog &&
          other.cost == this.cost);
}

class ProductsDataModelCompanion
    extends UpdateCompanion<ProductsDataModelData> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> description;
  final Value<String> productImage;
  final Value<String> catalog;
  final Value<String> cost;
  final Value<int> rowid;
  const ProductsDataModelCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.productImage = const Value.absent(),
    this.catalog = const Value.absent(),
    this.cost = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductsDataModelCompanion.insert({
    required String id,
    required String name,
    required String description,
    required String productImage,
    required String catalog,
    required String cost,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        description = Value(description),
        productImage = Value(productImage),
        catalog = Value(catalog),
        cost = Value(cost);
  static Insertable<ProductsDataModelData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? productImage,
    Expression<String>? catalog,
    Expression<String>? cost,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (productImage != null) 'product_image': productImage,
      if (catalog != null) 'catalog': catalog,
      if (cost != null) 'cost': cost,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductsDataModelCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<String>? description,
      Value<String>? productImage,
      Value<String>? catalog,
      Value<String>? cost,
      Value<int>? rowid}) {
    return ProductsDataModelCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      productImage: productImage ?? this.productImage,
      catalog: catalog ?? this.catalog,
      cost: cost ?? this.cost,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (productImage.present) {
      map['product_image'] = Variable<String>(productImage.value);
    }
    if (catalog.present) {
      map['catalog'] = Variable<String>(catalog.value);
    }
    if (cost.present) {
      map['cost'] = Variable<String>(cost.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsDataModelCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('productImage: $productImage, ')
          ..write('catalog: $catalog, ')
          ..write('cost: $cost, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final ProductsData productsData = ProductsData(this);
  late final $ProductsDataModelTable productsDataModel =
      $ProductsDataModelTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [productsData, productsDataModel];
}
