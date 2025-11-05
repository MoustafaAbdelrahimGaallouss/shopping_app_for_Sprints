import 'package:flutter/material.dart';
import 'package:shoppingapp/core/common/app_icon.dart';
import 'package:shoppingapp/core/common/custom_divider.dart';
import 'package:shoppingapp/core/constants.dart';
import 'package:shoppingapp/features/auth/presentation/widgets/Dialog.dart';
import 'package:shoppingapp/features/auth/presentation/widgets/custom_text_filed.dart';

class SignInView extends StatelessWidget {
  static const routeName = '/signin';
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKeySignIn = GlobalKey();
    String? emailAddress, Password;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
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
              key: formKeySignIn,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  appIcon(),
                  Text(
                    ' welcome Back',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),

                  const SizedBox(height: 24),

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
                        if (formKeySignIn.currentState!.validate()) {
                          showAppDialog(
                            context,
                            message: 'Account sign-in successfully',
                          );
                        } else {
                          print('validation failed');
                        }
                      },
                      child: Center(
                        child: Text(
                          'Sign In',
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
                        'Dont have an account?',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text(
                          'Sign Up',
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
