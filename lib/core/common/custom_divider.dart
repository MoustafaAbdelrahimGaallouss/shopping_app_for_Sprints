import 'package:flutter/material.dart';

class customDividerwidget extends StatelessWidget {
  const customDividerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        // Left side divider
        Expanded(
          child: Divider(
            color: Colors.grey, // Set your desired line color
            thickness: 1, // Set your desired line thickness
          ),
        ),

        // The "OR" text in the middle, with horizontal padding
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ), // Adjust padding as needed
          child: Text(
            "OR",
            style: TextStyle(
              color: Colors.grey, // Set your desired text color
              fontWeight: FontWeight.normal,
            ),
          ),
        ),

        // Right side divider
        Expanded(
          child: Divider(
            color: Colors.grey, // Set your desired line color
            thickness: 1, // Set your desired line thickness
          ),
        ),
      ],
    );
  }
}
