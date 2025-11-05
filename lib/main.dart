import 'package:flutter/material.dart';
import 'package:shoppingapp/core/views/welcome_view.dart';
import 'package:shoppingapp/features/Home/presentation/views/home_view.dart';
import 'package:shoppingapp/features/auth/presentation/views/sign_in_view.dart';
import 'package:shoppingapp/features/auth/presentation/views/sign_up_view.dart';
import 'package:shoppingapp/features/cart/presentation/views/cart_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/signup': (context) => SignUpView(),
        '/signin': (context) => const SignInView(),
        '/homeView': (context) => const HomeView(),
        '/cartView': (context) => const CartView(),
      },

      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
