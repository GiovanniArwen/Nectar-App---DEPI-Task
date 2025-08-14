import 'package:market/core/constants/assets.dart';

class ProductModel {
  final String name;
  final String image;
  final String price;
  final String quantity;

  ProductModel(
      {required this.name,
      required this.image,
      required this.price,
      required this.quantity});
}

List<ProductModel> products = [
  ProductModel(
      name: 'Organic Bananas',
      image: AppAssets.bana,
      price: '4.99',
      quantity: '7pcs, Priceg'),
        ProductModel(
      name: 'Red Apple',
      image: AppAssets.apple,
      price: '4.99',
      quantity: '1kg, Priceg'),
        ProductModel(
      name: 'Bell Pepper Red',
      image: AppAssets.pepp,
      price: '4.99',
      quantity: '1kg, Priceg'),
        ProductModel(
      name: 'Ginger',
      image: AppAssets.ging,
      price: '4.99',
      quantity: '1kg, Priceg'),
];
