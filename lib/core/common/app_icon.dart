import 'package:flutter/material.dart';
import 'package:shoppingapp/core/constants.dart';

class appIcon extends StatelessWidget {
  const appIcon({super.key,});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Icon(
        Icons.shopping_bag_outlined,
        size: 60,
        color: const Color(0xFFffffff),
      ),
    );
  }
}
