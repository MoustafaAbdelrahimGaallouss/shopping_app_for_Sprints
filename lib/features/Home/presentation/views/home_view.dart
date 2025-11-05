import 'package:flutter/material.dart';
import 'package:shoppingapp/features/Home/presentation/widgets/home_view_body.dart';
import 'package:shoppingapp/features/Home/presentation/widgets/custom_bottom_nav.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/homeView';
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  int _cartCount = 2; // example cart count, wire to real state as needed

  void _onNavTap(int index) {
    if (index == 1) {
      Navigator.pushNamed(context, '/cartView');
      return;
    }
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeViewBody(),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectedIndex,
        onTap: _onNavTap,
        cartCount: _cartCount,
      ),
    );
  }
}
