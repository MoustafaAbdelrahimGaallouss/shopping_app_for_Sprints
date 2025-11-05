import 'package:flutter/material.dart';
import 'banner_item.dart';

class BannersSection extends StatelessWidget {
  const BannersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            'Hot Offers',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              BannerItem(
                imageUrl: 'asset/images/hot_offer1.jpg',
                title: 'Summer Sale',
                subtitle: 'Up to 50% off on electronics',
                gradientColors: [Color(0xFF6B73FF), Color(0xFF000DFF)],
              ),
              SizedBox(width: 16),
              BannerItem(
                imageUrl: 'asset/images/hot_offer2.jpg',
                title: 'Flash Sale',
                subtitle: 'Special Weekend Offers',
                gradientColors: [Color(0xFFFF8C48), Color(0xFFFF5673)],
              ),
              SizedBox(width: 16),
              BannerItem(
                imageUrl: 'asset/images/hot_offer3.jpg',
                title: 'New Arrivals',
                subtitle: 'Check out latest collection',
                gradientColors: [Color(0xFF36D1DC), Color(0xFF5B86E5)],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
