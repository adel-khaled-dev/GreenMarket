import 'package:flutter/material.dart';
import 'package:greenmarket/core/colors/colors.dart';

class FiledText extends StatelessWidget {
  const FiledText({
    super.key,
    required this.hint,
    required this.color,
    required this.radius,
    this.icon,
  });
  final String hint;
  final Color color;
  final Icon? icon;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffixIcon: icon,
        hint: Text(
          hint,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: ColorsApp.hint,
          ),
        ),
        fillColor: color,
        filled: true,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
