import 'package:flutter/material.dart';
import 'package:furniture_ui/controllers/utils/app_colors.dart';

import '../../../../models/products_model.dart';

Widget productDescription(
        {required ProductsModel productsModel, required Function() press}) =>
    Container(
      constraints: BoxConstraints(minHeight: 44),
      padding: EdgeInsets.only(
        top: 90, //90
        left: 20, //20
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productsModel.subTitle!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              productsModel.description!,
              style: TextStyle(
                color: AppColors.kPrimaryColor.withOpacity(0.7),
                height: 1.5,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                // padding: EdgeInsets.all(15),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(50),
                // ),
                // color: kPrimaryColor,
                onPressed: press,
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
