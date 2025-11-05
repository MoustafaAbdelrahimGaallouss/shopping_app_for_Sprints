import 'package:flutter/material.dart';
import 'package:shoppingapp/core/constants.dart';
import 'package:shoppingapp/core/utils/assets.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(width: 20),
          Text(
            'Our Products',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Suwannaphum',
            ),
          ),
          const SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.notifications_none, size: 28),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
