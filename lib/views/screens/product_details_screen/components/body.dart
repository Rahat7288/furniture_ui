import 'package:flutter/material.dart';
import 'package:furniture_ui/views/screens/product_details_screen/components/product_description.dart';
import 'package:furniture_ui/views/screens/product_details_screen/components/product_info.dart';

import '../../../../models/products_model.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.productsModel});

  final ProductsModel productsModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            productInfo(productsModel: productsModel),
            Positioned(
              top: 37.5,
              left: 0,
              right: 0,
              child: productDescription(
                productsModel: productsModel,
                press: () {},
              ),
            ),
            Positioned(
              top: 9.5,
              right: 7.5,
              child: Hero(
                tag: productsModel.id!,
                child: Image.network(
                  productsModel.image!,
                  fit: BoxFit.cover,
                  height: 37.8, //378
                  width: 36.4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
