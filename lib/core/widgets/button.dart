import 'package:flutter/material.dart';
import 'package:greenmarket/core/colors/colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.color,
    required this.weight,
    required this.hight, required this.onPressed,
  });
  final String text;
  final Color color;
  final double weight;
  final double hight;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(weight, hight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: ColorsApp.textcolor,
        ),
      ),
    );
  }
}
