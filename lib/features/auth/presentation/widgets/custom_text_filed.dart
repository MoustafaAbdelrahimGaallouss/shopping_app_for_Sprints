import 'package:flutter/material.dart';

class customTextFiled extends StatelessWidget {
  customTextFiled({
    super.key,
    required this.hintText,
    required this.icon,
    required this.keyBoardType,
    this.fieldValidator,
    this.onChanged,
    this.obscureText = false,
  });
  final String? hintText;
  final IconData icon;
  final TextInputType keyBoardType;
  FormFieldValidator<String>? fieldValidator;
  bool obscureText;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        keyboardType: keyBoardType,
        validator: fieldValidator,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: TextStyle(
            color: Colors.grey[600],
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          prefixIcon: Icon(icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.black, width: 5),
          ),
        ),
      ),
    );
  }
}
