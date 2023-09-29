import 'package:flutter/material.dart';
import 'package:furniture_ui/views/screens/home/component/recomanded_products.dart';

import '../../../../controllers/api_services/category_fetch.dart';
import '../../../../controllers/api_services/product_fetch.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Browse by Categories",
              ),
            ),
            FutureBuilder(
              future: fetchCategory(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(categories: snapshot.data!)
                  : Center(
                      child: Image.asset("assets/ripple.gif"),
                    ),
            ),
            Divider(height: 5),
            Padding(
              padding: EdgeInsets.all(20), //20
              child: Text(
                "Recommands For You",
              ),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) => snapshot.hasData
                  ? RecomandedProducts(
                      products: snapshot.data!,
                    )
                  : Center(
                      child: Image.asset('assets/ripple.gif'),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
