class Product {
  final int id;
  final String name;
  final String ean;
  final String sku;

  //final properties must be required in Dart null safe
  const Product(
      {required this.id,
      required this.name,
      required this.ean,
      required this.sku});
}
