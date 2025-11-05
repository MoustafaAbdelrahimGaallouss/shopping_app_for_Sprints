import 'package:flutter/material.dart';
import 'package:shoppingapp/features/Home/presentation/widgets/Featured_Products.dart';
import 'package:shoppingapp/features/Home/presentation/widgets/banners_section.dart';
import 'package:shoppingapp/features/Home/presentation/widgets/custom_app_bar.dart';
import 'package:shoppingapp/features/Home/presentation/widgets/explore_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0, left: 16.0, right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const customAppBar(),
          Expanded(
            child: ListView(
              children: [
                const FeaturedProductswidget(),
                SizedBox(height: 40),

                const ExploreSection(),
                SizedBox(height: 20),
                const BannersSection(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
