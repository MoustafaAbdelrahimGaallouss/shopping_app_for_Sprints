import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingapp/core/animations/page_transitions.dart';
import 'package:shoppingapp/core/common/app_icon.dart';
import 'package:shoppingapp/core/common/custom_divider.dart';
import 'package:shoppingapp/core/constants.dart';
import 'package:shoppingapp/features/Home/presentation/views/home_view.dart';
import 'package:shoppingapp/features/auth/presentation/widgets/Dialog.dart';
import 'package:shoppingapp/features/auth/presentation/widgets/custom_text_filed.dart';

class SignUpView extends StatefulWidget {
  static const routeName = '/signup';

  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKeySignUP = GlobalKey();
    String? name, emailAddress, Password, confirmPassword;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 032,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKeySignUP,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  appIcon(),
                  Text(
                    '         Create Your \n    ShopFlow Account',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Suwannaphum',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  customTextFiled(
                    hintText: 'Name',
                    icon: Icons.person,
                    keyBoardType: TextInputType.name,
                    onChanged: (value) {
                      name = value;
                    },
                    fieldValidator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Name.';
                      }
                      if (value.startsWith(RegExp(r'[a-z]'))) {
                        return 'Name must start with a capital letter.';
                      }
                      return null;
                    },
                  ),
                  customTextFiled(
                    hintText: 'Email address',
                    icon: Icons.email,
                    keyBoardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      emailAddress = value;
                    },
                    fieldValidator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an email address.';
                      }

                      if (!value.contains('@')) {
                        return 'The email must contain the @ symbol.';
                      }
                      return null;
                    },
                  ),
                  customTextFiled(
                    hintText: 'Password',
                    icon: Icons.lock,
                    obscureText: true,
                    keyBoardType: TextInputType.visiblePassword,
                    onChanged: (value) {
                      Password = value;
                    },
                    fieldValidator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password.';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),

                  customTextFiled(
                    hintText: 'confirm Password',
                    icon: Icons.lock,
                    keyBoardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onChanged: (value) {
                      confirmPassword = value;
                    },
                    fieldValidator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password.';
                      }
                      if (confirmPassword != Password) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.maxFinite,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        if (formKeySignUP.currentState!.validate()) {
                         
                          showAppDialog(
                            context,
                            message: 'Account created successfully',
                          ).then((_) {
                            Navigator.pushReplacement(
                              context,
                              PageTransitions.fadeTransition(const HomeView()),
                            );
                          });
                        }
                      },
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  customDividerwidget(),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/signin');
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
