import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmarket/core/colors/colors.dart';

import 'package:greenmarket/core/widgets/icons.dart';
import 'package:greenmarket/features/page/Favorite/auth/Login/login.dart';


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //image
          Image.asset(
            width: double.infinity,
            height: double.infinity,
            "lib/core/assets/imags/welcome.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 84,
            right: 27.97,
            left: 27.97,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Text and Icon
                SvgPicture.asset(
                  IconApp.carrot,
                  colorFilter: ColorFilter.mode(
                    ColorsApp.textcolor,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  "Welcome\n to our store",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: ColorsApp.textcolor,
                  ),
                ),
                //text
                Text(
                  "Ger your groceries in as fast as one hour",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ColorsApp.textcolor,
                  ),
                ),
                SizedBox(height: 35),
                //Button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsApp.primary,
                    minimumSize: Size(319.75, 58.88),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorsApp.textcolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ///////////////////
        ],
      ),
    );
  }
}
