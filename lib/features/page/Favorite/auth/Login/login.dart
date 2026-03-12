import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmarket/core/colors/colors.dart';
import 'package:greenmarket/core/widgets/button.dart';
import 'package:greenmarket/core/widgets/filed.dart';
import 'package:greenmarket/core/widgets/filedpassword.dart';
import 'package:greenmarket/core/widgets/icons.dart';
import 'package:greenmarket/features/page/Favorite/auth/Login/number.dart';
import 'package:greenmarket/features/page/Favorite/auth/Singup/singup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: SvgPicture.asset(IconApp.carrot)),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "Enter your email and password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorsApp.greey,
                    ),
                  ),
                ),
                SizedBox(height: 38.6),

                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorsApp.greey,
                  ),
                ),

                SizedBox(height: 7),
                FiledText(
                  hint: "example@gmail.com",
                  color: ColorsApp.filed,
                  radius: 18.12,
                ),
                SizedBox(height: 12.29),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorsApp.greey,
                  ),
                ),
                SizedBox(height: 7),
                FiledPassword(
                  hint: "***************",
                  color: ColorsApp.filed,
                  radius: 18.12,
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: ColorsApp.primary,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Button(
                  text: "Log in",
                  color: ColorsApp.primary,
                  weight: double.infinity,
                  hight: 55,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Number()),
                    );
                  },
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Don’t have an account?'),
                    SizedBox(width: 2),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Singup()),
                        );
                      },
                      child: Text(
                        "SingUp",
                        style: TextStyle(color: ColorsApp.primary),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
