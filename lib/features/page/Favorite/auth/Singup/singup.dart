import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmarket/core/colors/colors.dart';
import 'package:greenmarket/core/widgets/button.dart';
import 'package:greenmarket/core/widgets/filed.dart';
import 'package:greenmarket/core/widgets/filedpassword.dart';
import 'package:greenmarket/core/widgets/icons.dart';
import 'package:greenmarket/features/page/Favorite/auth/Login/login.dart';
import 'package:greenmarket/features/page/Favorite/auth/Login/number.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(22.48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: SvgPicture.asset(IconApp.carrot)),
              SizedBox(height: 45.39),
              Text(
                "Sing Up",
                style: TextStyle(fontSize: 23.55, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 12.85),
              Text(
                "Enter your credentials to continue",
                style: TextStyle(
                  fontSize: 14.49,
                  fontWeight: FontWeight.w400,
                  color: ColorsApp.greey,
                ),
              ),
              SizedBox(height: 44.88),
              Text(
                "Name",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorsApp.greey,
                ),
              ),
              SizedBox(height: 1.9),
              FiledText(hint: "Adel", color: ColorsApp.filed, radius: 18.22),
              SizedBox(height: 11.87),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorsApp.greey,
                ),
              ),
              SizedBox(height: 1.9),
              FiledText(
                hint: "example@gmail.com",
                color: ColorsApp.filed,
                radius: 18.22,
              ),
              SizedBox(height: 11.87),
              Text(
                "Password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: ColorsApp.greey,
                ),
              ),
              SizedBox(height: 1.9),
              FiledPassword(
                hint: "**************",
                color: ColorsApp.filed,
                radius: 18.22,
              ),
              SizedBox(height: 30),
              Button(
                text: "Singn Up",
                color: ColorsApp.primary,
                weight: 331,
                hight: 55,
                onPressed: () { Navigator.push(
                        context,
                       MaterialPageRoute(builder:(context)=>Number())
                      );},
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  SizedBox(width: 2),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: ColorsApp.primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
