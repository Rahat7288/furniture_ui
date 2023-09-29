import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_ui/controllers/utils/app_colors.dart';

import '../../../../models/products_model.dart';

Widget productInfo({required ProductsModel productsModel}) => Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 375,
      width: 150,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              productsModel.category!.toUpperCase(),
            ),
            SizedBox(height: 20),
            Text(
              productsModel.title!,
              style: TextStyle(
                fontSize: 24, //24
                fontWeight: FontWeight.bold,
                letterSpacing: -0.8,
                height: 1.4,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Form",
            ),
            Text(
              "\$${productsModel.price}",
              style: TextStyle(
                fontSize: 16, //16
                fontWeight: FontWeight.bold,
                height: 1.6,
              ),
            ),
            SizedBox(height: 20), //20
            Text(
              "Available Colors",
            ),
            Row(
              children: <Widget>[
                buildColorBox(
                  360,
                  color: Color(0xFF7BA275),
                  isActive: true,
                ),
                buildColorBox(
                  360,
                  color: Color(0xFFD7D7D7),
                ),
                buildColorBox(
                  360,
                  color: AppColors.kTextColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );

Container buildColorBox(double defaultSize,
    {required Color color, bool isActive = false}) {
  return Container(
    margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
    // For  fixed value we can use cont for better performance
    padding: const EdgeInsets.all(5),
    height: defaultSize * 2.4,
    width: defaultSize * 2.4,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(6),
    ),
    child: isActive ? SvgPicture.asset("assets/icons/check.svg") : SizedBox(),
  );
}
