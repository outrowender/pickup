import 'dart:convert';

import 'package:pickup/app/modules/product/domain/entities/Product.dart';

class ProductModel extends Product {
  late int id;
  late String name;
  late String ean;
  late String sku;

  ProductModel({
    required this.id,
    required this.name,
    required this.ean,
    required this.sku,
  }) : super(id: id, name: name, ean: ean, sku: sku);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'ean': ean,
      'sku': sku,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      ean: map['ean'] ?? '',
      sku: map['sku'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, ean: $ean, sku: $sku)';
  }

  @override
  //you can override a operator in Dart!
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.id == id &&
        other.name == name &&
        other.ean == ean &&
        other.sku == sku;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ ean.hashCode ^ sku.hashCode;
  }
}
