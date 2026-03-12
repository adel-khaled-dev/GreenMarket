import 'package:flutter/material.dart';
import 'package:greenmarket/core/colors/colors.dart';
import 'package:greenmarket/core/widgets/filed.dart';
import 'package:greenmarket/core/widgets/icons.dart';
import 'package:greenmarket/features/page/explore/page/exp_nav.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.textcolor,
      appBar: AppBar(
        backgroundColor: ColorsApp.textcolor,
        centerTitle: true,
        title: Text(
          "Find Products",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FiledText(
                icon: Icon(Icons.search),
                hint: "Search Store",
                color: ColorsApp.filed,
                radius: 13.59,
              ),
              SizedBox(height: 15),
              GridView.builder(
                itemCount: 7,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DEExplore()),
                      );
                    },
                    child: Container(
                      width: 160,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorsApp.greey),
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff53B175),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentGeometry.center,
                              child: Image.asset(IconApp.grid),
                            ),
                            SizedBox(height: 19),
                            Text(
                              textAlign: TextAlign.center,
                              "Frash Fruits & Vegetable",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.50,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 200,
                ),
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
