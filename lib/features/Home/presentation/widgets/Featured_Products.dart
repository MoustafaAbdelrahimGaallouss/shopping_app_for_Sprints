import 'package:flutter/material.dart';
import 'package:shoppingapp/features/Home/presentation/widgets/product_list.dart';

class FeaturedProductswidget extends StatelessWidget {
  const FeaturedProductswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          'Featured Products',
          style: TextStyle(
            fontFamily: 'Suwannaphum',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        const ProductListView(),
      ],
    );
  }
}
