import 'package:flutter/material.dart';
import 'package:greenmarket/core/colors/colors.dart';

class FiledPassword extends StatefulWidget {
  const FiledPassword({
    super.key,
    required this.hint,
    required this.color,
    required this.radius,
  });
  final String hint;
  final Color color;

  final double radius;

  @override
  State<FiledPassword> createState() => _FiledPasswordState();
}

class _FiledPasswordState extends State<FiledPassword> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      obscureText: true,
      decoration: InputDecoration(
        hint: Text(
          widget.hint,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: ColorsApp.hint,
          ),
        ),
        fillColor: widget.color,
        filled: true,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
