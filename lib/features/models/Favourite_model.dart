import 'package:market/core/constants/assets.dart';

class FavouriteModel {
  final String name;
  final String image;
  final String price;
  final String quantity;

  FavouriteModel(
      {required this.name,
      required this.image,
      required this.price,
      required this.quantity});
}

List<FavouriteModel> favouritemodel = [
  FavouriteModel(
      name: 'Sprite Can',
      image: AppAssets.sprite,
      price: '\$1.50',
      quantity: '325ml, Price'),
        FavouriteModel(
      name: 'Diet Coke',
      image: AppAssets.dietcoke,
      price: '\$1.99',
      quantity: '355ml, Price'),
        FavouriteModel(
      name: 'Apple & Grape Juice',
      image: AppAssets.applejuice,
      price: '\$15.50',
      quantity: '2L, Price'),
        FavouriteModel(
      name: 'Coca Cola Can',
      image: AppAssets.cola,
      price: '\$4.99',
      quantity: '325ml, Price'),
      FavouriteModel(
      name: 'Pepsi Can ',
      image: AppAssets.pepsican,
      price: '\$4.99',
      quantity: '330ml, Price'),
];
