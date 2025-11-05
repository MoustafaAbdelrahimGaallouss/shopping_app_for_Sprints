import 'package:flutter/material.dart';
import 'package:shoppingapp/core/utils/assets.dart';
import 'package:shoppingapp/features/Home/presentation/widgets/explore_item_card.dart';

class ExploreSection extends StatelessWidget {
  final String title;
  final VoidCallback? onViewAll;

  const ExploreSection({Key? key, this.title = 'Explore More', this.onViewAll})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'img': AssetsData.photo10,
        'title': 'Ergonomic Office Chair',
        'price': r'$120.00',
      },
      {
        'img': AssetsData.photo11,
        'title': 'Smart Home Speaker',
        'price': r'$49.99',
      },
      {
        'img': AssetsData.photo12,
        'title': 'Stainless Steel Water Bottle',
        'price': r'$18.50',
      },
      {
        'img': AssetsData.photo13,
        'title': 'Organic Cotton T-Shirt',
        'price': r'$25.00',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Suwannaphum',
                ),
              ),
              TextButton(
                onPressed: onViewAll ?? () {},
                child: const Text(
                  'View All',
                  style: TextStyle(fontFamily: 'Suwannaphum'),
                ),
              ),
            ],
          ),
        ),

        // Grid with 2 columns and 2 rows (4 items)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.8,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) {
              final it = items[index % items.length];
              return ExploreItemCard(
                imagePath: it['img'] as String,
                title: it['title'] as String,
                price: it['price'] as String,
                onAdd: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(' added to cart')));
                },
              );
            }),
          ),
        ),
      ],
    );
  }
}
