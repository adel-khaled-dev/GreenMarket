import 'package:flutter/material.dart';
import 'package:greenmarket/core/colors/colors.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.textcolor,
      appBar: AppBar(
        backgroundColor: ColorsApp.textcolor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Favourite",
          style: TextStyle(fontSize: 18.12, fontWeight: FontWeight.w400),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),

            Expanded(
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (context, index) =>
                    Divider(color: Colors.grey, height: 1),
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        Image.asset(
                          "lib/core/assets/imags/pngfuel 6.png",
                          width: 40,
                          height: 40,
                        ),

                        const SizedBox(width: 12),

                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sprite Can",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                "325ml, Price",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const Text(
                          "\$1.50",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(width: 6),

                        const Icon(Icons.chevron_right, color: Colors.black),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 5),

            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsApp.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  "Add All To Cart",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
