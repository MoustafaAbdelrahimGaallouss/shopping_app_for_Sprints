import 'package:flutter/material.dart';
import 'package:shoppingapp/core/utils/assets.dart';
import 'package:shoppingapp/features/Home/presentation/widgets/product_card.dart';

class ProductListView extends StatelessWidget {
  final int itemCount;
  const ProductListView({Key? key, this.itemCount = 5}) : super(key: key);

  static const List<String> _images = [
    AssetsData.photo2,
    AssetsData.photo3,
    AssetsData.photo4,
    AssetsData.photo5,
    AssetsData.photo6,
    AssetsData.photo7,
    AssetsData.photo8,
    AssetsData.photo9,
    AssetsData.photo10,
    AssetsData.photo11,
    AssetsData.photo12,
    AssetsData.photo13,
    AssetsData.photo14,
    AssetsData.photo15,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
        itemBuilder: (context, index) {
          final img = _images[index % _images.length];
          return ProductCard(
            imagePath: img,
            title: 'Luxury Smartwatch Pro',
            description:
                'Track your fitness, notifications, and more with this premium smartwatch.',
            price: 249.99,
          );
        },
      ),
    );
  }
}
