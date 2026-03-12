import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greenmarket/core/colors/colors.dart';
import 'package:greenmarket/core/widgets/icons.dart';
import 'package:greenmarket/features/page/Account/acount.dart';
import 'package:greenmarket/features/page/cart/cart.dart';
import 'package:greenmarket/features/page/explore/page/explore.dart';
import 'package:greenmarket/features/page/Favorite/favourite.dart';
import 'package:greenmarket/features/page/home/home.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int curentIndex = 0;
  List<Widget> screen = [
    Home(),
    Explore(),
    MyCartPage(),
    Favourite(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[curentIndex],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: BottomNavigationBar(
              showUnselectedLabels: true,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              currentIndex: curentIndex,

              onTap: (value) {
                setState(() {
                  curentIndex = value;
                });
              },
              items: [
                //Home
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(IconApp.home),
                  label: "home",
                  activeIcon: SvgPicture.asset(
                    IconApp.home,
                    colorFilter: ColorFilter.mode(
                      ColorsApp.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                //Explore
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(IconApp.explore),
                  label: "Explore",
                  activeIcon: SvgPicture.asset(
                    IconApp.explore,
                    colorFilter: ColorFilter.mode(
                      ColorsApp.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                //Cart
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(IconApp.cart),
                  label: "Cart",
                  activeIcon: SvgPicture.asset(
                    IconApp.cart,
                    colorFilter: ColorFilter.mode(
                      ColorsApp.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                //Favourite
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(IconApp.favourite),
                  label: "Favorite",
                  activeIcon: SvgPicture.asset(
                    IconApp.favourite,
                    colorFilter: ColorFilter.mode(
                      ColorsApp.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                //Account
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(IconApp.account),
                  label: "Account",
                  activeIcon: SvgPicture.asset(
                    IconApp.account,
                    colorFilter: ColorFilter.mode(
                      ColorsApp.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
