import 'package:flutter/material.dart';
import 'package:greenmarket/core/colors/colors.dart';
import 'package:greenmarket/core/widgets/button.dart';
import 'package:greenmarket/core/widgets/filed.dart';

class Number extends StatelessWidget {
  const Number({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: SingleChildScrollView(
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter your mobile number",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "We need to verify you. We will send you a one\n time verification code.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorsApp.greey,
                    ),
                  ),
                  SizedBox(height: 42),
                  FiledText(
                    icon: null,
                    hint: "01xxxxxxxxxx",
                    color: ColorsApp.filed,
                    radius: 18.22,
                  ),
                  SizedBox(height: 46.65),
                  Button(
                    text: "Next",
                    color: ColorsApp.primary,
                    weight: double.infinity,
                    hight: 55,
                    onPressed: () {},
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
