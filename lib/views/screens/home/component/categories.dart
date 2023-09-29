import 'package:flutter/material.dart';

import '../../../../models/category_model.dart';
import '../../../widgets/cards/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.categories});
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            categoryModel: categories[index],
          ),
        ),
      ),
    );
  }
}
