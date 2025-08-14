import 'package:flutter/material.dart';
import 'package:market/core/constants/assets.dart';

class AccountList {
  final String name;
  final String image;
  final Icon suficon;
  AccountList({
    required this.name,
    required this.image,
    required this.suficon,
  });
}

List<AccountList> accountlist = [
  AccountList(
      name: 'Orders',
      image: AppAssets.order,
      suficon: Icon(Icons.arrow_forward_ios)),
  AccountList(
      name: 'My Details',
      image: AppAssets.mydetails,
      suficon: Icon(Icons.arrow_forward_ios)),
  AccountList(
      name: 'Delivery Address',
      image: AppAssets.locationacc,
      suficon: Icon(Icons.arrow_forward_ios)),
  AccountList(
      name: 'Payment Methods',
      image: AppAssets.payment,
      suficon: Icon(Icons.arrow_forward_ios)),
  AccountList(
      name: 'Promo Cord',
      image: AppAssets.promocode,
      suficon: Icon(Icons.arrow_forward_ios)),
  AccountList(
      name: 'Notifecations ',
      image: AppAssets.notifications,
      suficon: Icon(Icons.arrow_forward_ios)),
  AccountList(
      name: 'Help',
      image: AppAssets.help,
      suficon: Icon(Icons.arrow_forward_ios)),
  AccountList(
      name: 'About ',
      image: AppAssets.about,
      suficon: Icon(Icons.arrow_forward_ios)),
];
