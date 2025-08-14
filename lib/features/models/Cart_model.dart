import 'package:market/core/constants/assets.dart';

class CartProduct {
  final String name;
  final String subname;
  final String Price;
  final String quantity;
  final String image;
  CartProduct(
      {required this.Price,
      required this.image,
      required this.name,
      required this.quantity,
      required this.subname});
}

List<CartProduct> MyCartProduct = [
  CartProduct(
      Price: '\$4.99',
      image: AppAssets.pepp,
      name: 'Bell Pepper Red',
      quantity: '1',
      subname: '1kg, Price'),

      CartProduct(
      Price: '\$1.99',
      image: AppAssets.egg,
      name: 'Egg Chicken Red',
      quantity: '1',
      subname: '4pcs, Price'),

      CartProduct(
      Price: '\$3.00',
      image: AppAssets.bana,
      name: 'Organic Bananas',
      quantity: '1',
      subname: '12kg, Price'),

      CartProduct(
      Price: '\$2.99',
      image: AppAssets.ging,
      name: 'Ginger',
      quantity: '1',
      subname: '250gm, Price'),

      CartProduct(
      Price: '\$4.99',
      image: AppAssets.pepp,
      name: 'Bell Pepper Red',
      quantity: '1',
      subname: '1kg, Price'),

      CartProduct(
      Price: '\$1.99',
      image: AppAssets.egg,
      name: 'Egg Chicken Red',
      quantity: '1',
      subname: '4pcs, Price'),
];
