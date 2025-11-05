import 'package:flutter/material.dart';
import 'package:shoppingapp/core/constants.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({Key? key, required this.message, required this.navigateTo})
    : super(key: key);
  final String message;
  final String navigateTo;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(message, textAlign: TextAlign.center),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();

                Navigator.of(context).pushNamed(navigateTo);
              },
              child: Container(
                width: 100,
                height: 32,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text('Close', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Helper to show the [AppDialog] with the given [message].
Future<T?> showAppDialog<T>(
  BuildContext context, {
  required String message,
  String navigateTo = '/homeView',
}) {
  return showDialog<T>(
    context: context,
    builder: (ctx) => AppDialog(message: message, navigateTo: navigateTo),
  );
}
