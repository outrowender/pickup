import 'dart:convert';

import 'package:pickup/app/modules/product/domain/entities/Product.dart';

class ProductModel extends Product {
  final int id;
  final String name;
  final String ean;
  final String sku;

  ProductModel({
    required this.id,
    required this.name,
    required this.ean,
    required this.sku,
  }) : super(id: id, name: name, ean: ean, sku: sku);

  ProductModel copyWith({
    int? id,
    String? name,
    String? ean,
    String? sku,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      ean: ean ?? this.ean,
      sku: sku ?? this.sku,
    );
  }

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
      id: map['id'],
      name: map['name'],
      ean: map['ean'],
      sku: map['sku'],
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
