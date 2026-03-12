import 'package:flutter/material.dart';
import 'package:greenmarket/core/colors/colors.dart';

class NewWidget extends StatelessWidget {
  const NewWidget({super.key, required this.ax});
  final Axis ax;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: ax,
      itemCount: 10,
      separatorBuilder: (context, index) {
        return const SizedBox(width: 10);
      },

      itemBuilder: (context, index) {
        return Container(
          width: 160,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: ColorsApp.greey),
            borderRadius: BorderRadius.circular(12),
            color: ColorsApp.textcolor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentGeometry.center,
                child: Image.asset("lib/core/assets/imags/bnananas.png"),
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
        );
      },
    );
  }
}
