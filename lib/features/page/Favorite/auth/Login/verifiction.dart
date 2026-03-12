import 'package:flutter/material.dart';
import 'package:greenmarket/core/colors/colors.dart';
import 'package:greenmarket/core/widgets/button.dart';
import 'package:pinput/pinput.dart';

class Verifiction extends StatelessWidget {
  const Verifiction({super.key});

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
                    "Enter Verification code",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "We have sent SMS to: 01xxxxxxxxxxxx",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorsApp.greey,
                    ),
                  ),
                  SizedBox(height: 28.48),
                  Center(
                    child: Pinput(
                      defaultPinTheme: PinTheme(
                        width: 328,
                        height: 56,
                        decoration: BoxDecoration(
                          color: ColorsApp.filed,
                          borderRadius: BorderRadiusDirectional.circular(12),
                        ),
                      ),
                      length: 5,
                      onCompleted: (pin) {},
                    ),
                  ),
                  SizedBox(height: 31),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Change Phone Number",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorsApp.greey,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 27.52),
                  Button(
                    text: "Confirm",
                    color: ColorsApp.primary,
                    weight: double.infinity,
                    hight: 61,
                    onPressed: () {},
                  ),
                  SizedBox(height: 14.6),
                  Center(
                    child: Text(
                      "Resend confirmation code (1:23)",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Roboto",
                        color: Color(0xff000000),
                      ),
                    ),
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
