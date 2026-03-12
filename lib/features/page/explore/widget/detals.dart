import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmarket/core/colors/colors.dart';
import 'package:greenmarket/core/widgets/button.dart';
import 'package:greenmarket/core/widgets/icons.dart';

class Detals extends StatelessWidget {
  const Detals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))],
        backgroundColor: Color(0xfff2f3f2),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              color: Color(0xfff2f3f2),
            ),
            child: Center(child: Image.asset(IconApp.appel)),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 22, right: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Naturel Red Apple",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset(IconApp.favourite),
                  ],
                ),
                SizedBox(height: 12),
                Text("1kg"),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("-", style: TextStyle(fontSize: 30)),
                    SizedBox(width: 18),
                    Container(
                      width: 41,
                      height: 41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(child: Text("1", style: TextStyle())),
                    ),
                    SizedBox(width: 18),
                    Text("+", style: TextStyle(fontSize: 30)),
                    Spacer(),
                    Text("\$4.99", style: TextStyle(fontSize: 30)),
                  ],
                ),
                SizedBox(height: 29),
                Divider(),
                SizedBox(height: 15),
                Text("Product Detail", style: TextStyle(fontSize: 30)),
                SizedBox(height: 9),
                Text(
                  "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                ),
                SizedBox(height: 9),
                Divider(),
                SizedBox(height: 9),
                Row(
                  children: [
                    Text("Nutritions"),
                    SizedBox(width: 155),
                    SvgPicture.asset(IconApp.datek),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_sharp),
                  ],
                ),
                SizedBox(height: 9),
                Divider(),
                Row(
                  children: [
                    Text("Review"),
                    Spacer(),
                    Icon(Icons.star_rate_rounded, color: Colors.amberAccent),
                    Icon(Icons.star_rate_rounded, color: Colors.amberAccent),
                    Icon(Icons.star_rate_rounded, color: Colors.amberAccent),
                    Icon(Icons.star_rate_rounded, color: Colors.amberAccent),
                    Icon(Icons.star_rate_rounded, color: Colors.amberAccent),
                  ],
                ),
                SizedBox(height: 9),
                Button(
                  text: "Add To Cart",
                  color: ColorsApp.primary,
                  weight: double.infinity,
                  hight: 60,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
