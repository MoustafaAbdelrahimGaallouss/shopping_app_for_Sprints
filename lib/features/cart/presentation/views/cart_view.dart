import 'package:flutter/material.dart';
import 'package:shoppingapp/features/Home/presentation/widgets/custom_bottom_nav.dart';
import '../widgets/cart_item_tile.dart';
import '../widgets/cart_order_summary.dart';
import '../widgets/cart_feedback_section.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  void _onNavTap(BuildContext context, int index) {
    if (index == 0) {
      // Navigate to home
      Navigator.pushReplacementNamed(context, '/homeView');
    } else if (index == 2) {
      // Navigate to profile
      // You can implement profile navigation here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: const Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cart Items
              CartItemTile(
                imagePath: 'asset/images/photo2.jpg',
                title: 'Modern Smartwatch',
                price: 199.99,
                quantity: 1,
              ),
              CartItemTile(
                imagePath: 'asset/images/photo3.jpg',
                title: 'Wireless Ergonomic Mouse',
                price: 45.00,
                quantity: 2,
              ),
              CartItemTile(
                imagePath: 'asset/images/photo4.jpg',
                title: 'Premium Noise-Cancelling Headphones',
                price: 249.99,
                quantity: 1,
              ),
              const SizedBox(height: 16),
              // Order Summary
              const CartOrderSummary(
                subtotal: 539.98,
                taxes: 43.20,
                total: 583.18,
              ),
              const SizedBox(height: 16),
              // Feedback Section
              const CartFeedbackSection(),
              const SizedBox(height: 16),
              // Checkout Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF3D74B8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Proceed to Checkout',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
