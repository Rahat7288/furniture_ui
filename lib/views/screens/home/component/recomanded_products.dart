import 'package:flutter/material.dart';

import '../../../../models/products_model.dart';
import '../../../widgets/cards/product_card.dart';
import '../../product_details_screen/prroduct_details.dart';

class RecomandedProducts extends StatelessWidget {
  const RecomandedProducts({super.key, required this.products});

  final List<ProductsModel> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) => productCard(
            productsModel: products[index],
            press: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetailScreen()))),
      ),
    );
  }
}
