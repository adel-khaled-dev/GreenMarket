import 'package:flutter/material.dart';
import 'package:greenmarket/core/colors/colors.dart';
import 'package:greenmarket/core/widgets/filed.dart';
import 'package:greenmarket/features/page/explore/widget/detals.dart';

class DEExplore extends StatelessWidget {
  const DEExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.textcolor,
      appBar: AppBar(
        backgroundColor: ColorsApp.textcolor,
        centerTitle: true,
        title: Text(
          "Frash Fruits & Vegetable",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
        ],
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
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Detals()),
                      );
                    },
                    child: Container(
                      width: 160,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorsApp.greey),
                        borderRadius: BorderRadius.circular(12),
                        color: ColorsApp.textcolor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentGeometry.center,
                              child: Image.asset(
                                "lib/core/assets/imags/bnananas.png",
                              ),
                            ),
                            SizedBox(height: 19),
                            Text(
                              "Bananas",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "7pcs",
                              style: TextStyle(
                                color: ColorsApp.greey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 17.19),
                            Row(
                              children: [
                                Text(
                                  "\$4.99",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Spacer(),
                                FloatingActionButton(
                                  backgroundColor: ColorsApp.primary,
                                  onPressed: () {},
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: ColorsApp.textcolor,
                                    ),
                                  ),
                                ),
                              ],
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
                  mainAxisExtent: 260,
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
