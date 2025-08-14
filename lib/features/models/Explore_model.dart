import 'package:flutter/material.dart';
import 'package:market/core/constants/assets.dart';

class Product1 {
  final String name;
  final String image;
  final Color colors;
  final Color BorderColor;

  Product1(  
      {required this.name,
      required this.BorderColor,
      required this.image,
      required this.colors});
}

List<Product1> products1 = [
  Product1(
      BorderColor:Color(0xFF53B175),
      name: 'Frash Fruits\n& Vegetable',
      image: AppAssets.fruits,
      colors: Color(0xFF53B175).withOpacity(0.2)
      ),
        Product1(
      BorderColor:Color(0xFFF8A44C),
      name: 'Cooking Oil\n& Ghee',
      image: AppAssets.oil,
      colors: Color(0xFFF8A44C).withOpacity(0.2)
      ),
      Product1(
      BorderColor:Color(0xFFF7A593),
      name: 'Meat & Fish',
      image: AppAssets.meat,
      colors: Color(0xFFF7A593).withOpacity(0.2)
      ),
      Product1(
      BorderColor:Color(0xFFD3B0E0),
      name: 'Bakery & Snacks',
      image: AppAssets.bread,
      colors: Color(0xFFD3B0E0).withOpacity(0.2) 
      ),
      Product1(
      BorderColor:Color(0xFFFDE598),
      name: 'Dairy & Eggs',
      image: AppAssets.egg,
      colors: Color(0xFFFDE598).withOpacity(0.2) 
      ),
      Product1(
      BorderColor:Color(0xFFB7DFF5),
      name: 'Beverages',
      image: AppAssets.beverges,
      colors: Color(0xFFB7DFF5).withOpacity(0.2) 
      ),
      Product1(
      BorderColor:Color(0xFFF8A44C),
      name: 'Meat & Fish',
      image: AppAssets.meat,
      colors: Color(0xFFF8A44C).withOpacity(0.2)
      ),
      Product1(
      BorderColor:Color(0xFFF7A593),
      name: 'Bakery & Snacks',
      image: AppAssets.bread,
      colors: Color(0xFFF7A593).withOpacity(0.2)
      ),
];
