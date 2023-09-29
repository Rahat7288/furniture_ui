import 'package:flutter/material.dart';
import 'package:furniture_ui/controllers/utils/app_colors.dart';

import '../../../models/products_model.dart';

Widget productCard(
        {required ProductsModel productsModel, required Function() press}) =>
    GestureDetector(
      onTap: press,
      child: Container(
        width: 145,
        decoration: BoxDecoration(
          color: AppColors.kSecondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: productsModel.id!,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.gif",
                    image: productsModel.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(productsModel.title!),
              ),
              SizedBox(height: 10),
              Text("\$${productsModel.price}"),
              Spacer(),
            ],
          ),
        ),
      ),
    );
