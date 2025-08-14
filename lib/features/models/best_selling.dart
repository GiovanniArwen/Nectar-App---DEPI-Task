import 'package:market/core/constants/assets.dart';

class ProductModelBestSelling {
  final String name;
  final String image;
  final String price;
  final String quantity;

  ProductModelBestSelling(
      {required this.name,
      required this.image,
      required this.price,
      required this.quantity});
}

List<ProductModelBestSelling> productsBestSelling = [
  ProductModelBestSelling(
      name: 'Bell Pepper Red',
      image: AppAssets.pepp,
      price: '4.99',
      quantity: '7pcs, Priceg'),
        ProductModelBestSelling(
      name: 'Ginger',
      image: AppAssets.ging,
      price: '4.99',
      quantity: '1kg, Priceg'),
        ProductModelBestSelling(
      name: 'Organic Bananas',
      image: AppAssets.bana,
      price: '4.99',
      quantity: '1kg, Priceg'),
        ProductModelBestSelling(
      name: 'Red Apple',
      image: AppAssets.apple,
      price: '4.99',
      quantity: '1kg, Priceg'),
];
