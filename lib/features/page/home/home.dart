import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greenmarket/core/colors/colors.dart';
import 'package:greenmarket/core/widgets/filed.dart';
import 'package:greenmarket/core/widgets/new_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.textcolor,
      appBar: AppBar(
        backgroundColor: ColorsApp.textcolor,
        centerTitle: true,
        title: SvgPicture.asset(
          width: 36.32,
          height: 42.23,
          "lib/core/assets/imags/welcome_svg.svg",
          colorFilter: ColorFilter.mode(ColorsApp.primary, BlendMode.srcIn),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              FiledText(
                icon: Icon(Icons.search),
                hint: "Search Store",
                color: ColorsApp.filed,
                radius: 13.59,
              ),
              SizedBox(height: 21),
              Row(
                children: [
                  Text(
                    "Exclusive Offer",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: ColorsApp.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9),

              SizedBox(height: 230, child: NewWidget(ax: Axis.horizontal,)),
              ///////////////////
              SizedBox(height: 28.9),
              Row(
                children: [
                  Text(
                    "Best Selling",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                        color: ColorsApp.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 9),

              SizedBox(height: 230, child: NewWidget(ax: Axis.horizontal,)),
            ],
          ),
        ),
      ),
    );
  }
}
