import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/components/inputs/main_button.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/models/order_model.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({super.key, required this.model});
  final ProductModel model;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool _isExpanded = false;
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.whiteColor,
      appBar: AppBar(
        backgroundColor: MColors.bordercolor,
        actions: [
          Icon(
            Icons.ios_share_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 18,
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: MColors.bordercolor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: SvgPicture.asset(
                widget.model.image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.model.name,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            widget.model.quantity,
                            style: TextStyle(
                                fontSize: 18,
                                color: MColors.greyColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/Vector.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      remove_button(),
                      FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        child: Text(
                          '1',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w400),
                        ),
                        mini: true,
                        backgroundColor: MColors.whiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                            side: BorderSide(
                              color: MColors.bordercolor,
                            )),
                      ),
                      add_button(),
                      Spacer(),
                      Text(
                        '\$${widget.model.price}',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  // Divider(
                  //   color: Colors.black,
                  //   height: 12,
                  //   thickness: 1,
                  // ),
                  ExpansionTile(
                      children: [
                        Text(
                          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                          style: TextStyle(
                            fontSize: 12,
                            color: MColors.greyColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                      iconColor: Colors.black,
                      trailing: AnimatedRotation(
                        turns: _isExpanded ? 0.25 : 0,
                        duration: const Duration(milliseconds: 300),
                        child: const Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                      onExpansionChanged: (expanded) {
                        setState(() {
                          _isExpanded = expanded;
                        });
                      },
                      tilePadding: EdgeInsets.symmetric(horizontal: 5),
                      title: Title(
                        color: MColors.greyColor,
                        child: Text(
                          'Product Detail',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )),
                  ExpansionTile(
                      children: [
                        Text(
                          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                          style: TextStyle(
                            fontSize: 12,
                            color: MColors.greyColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                      iconColor: Colors.black,
                      trailing: AnimatedRotation(
                        turns: _isExpanded1 ? 0.25 : 0,
                        duration: const Duration(milliseconds: 300),
                        child: const Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                      onExpansionChanged: (expanded) {
                        setState(() {
                          _isExpanded1 = expanded;
                        });
                      },
                      tilePadding: EdgeInsets.symmetric(horizontal: 5),
                      title: Title(
                          color: MColors.greyColor,
                          child: Text(
                            'Nutritions',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ))),
                  ExpansionTile(
                      children: [
                        Text(
                          'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                          style: TextStyle(
                            fontSize: 13,
                            color: MColors.greyColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                      iconColor: Colors.black,
                      trailing: AnimatedRotation(
                        turns: _isExpanded2 ? 0.25 : 0,
                        duration: const Duration(milliseconds: 300),
                        child: const Icon(Icons.arrow_forward_ios, size: 20),
                      ),
                      onExpansionChanged: (expanded) {
                        setState(() {
                          _isExpanded2 = expanded;
                        });
                      },
                      tilePadding: EdgeInsets.symmetric(horizontal: 5),
                      title: Title(
                        color: MColors.greyColor,
                        child: Row(
                          children: [
                            Text(
                              'Review',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 122,
                            ),
                            Icon(Icons.star, color: Color(0xffF3603F)),
                            Icon(Icons.star, color: Color(0xffF3603F)),
                            Icon(Icons.star, color: Color(0xffF3603F)),
                            Icon(Icons.star, color: Color(0xffF3603F)),
                            Icon(Icons.star, color: Color(0xffF3603F)),
                          ],
                        ),
                      )),
                      SizedBox(height: 5,),
                      MainButton(text: 'Add To Basket', onPressed: (){})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  FloatingActionButton add_button() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.add,
        color: MColors.PrimaryColor,
      ),
      backgroundColor: MColors.whiteColor,
      elevation: 0,
      mini: true,
    );
  }

  FloatingActionButton remove_button() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.remove,
        color: MColors.greyColor,
      ),
      backgroundColor: MColors.whiteColor,
      elevation: 0,
      mini: true,
    );
  }
}
