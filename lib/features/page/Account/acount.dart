import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      body: SafeArea(
        child: Column(
          children: [
            /// profile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),

                  const SizedBox(width: 14),

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "adel khaled",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "adel@gmail.com",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                  const Spacer(),

                  const Icon(Icons.edit, color: Colors.green),
                ],
              ),
            ),

            const Divider(height: 1),

            Expanded(
              child: ListView(
                children: const [
                  AccountTile(
                    icon: Icons.shopping_bag_outlined,
                    title: "Orders",
                  ),

                  AccountTile(icon: Icons.person_outline, title: "My Details"),

                  AccountTile(
                    icon: Icons.location_on_outlined,
                    title: "Delivery Address",
                  ),

                  AccountTile(
                    icon: Icons.credit_card,
                    title: "Payment Methods",
                  ),

                  AccountTile(
                    icon: Icons.card_giftcard_outlined,
                    title: "Promo Cord",
                  ),

                  AccountTile(
                    icon: Icons.notifications_none,
                    title: "Notifications",
                  ),

                  AccountTile(icon: Icons.help_outline, title: "Help"),

                  AccountTile(icon: Icons.info_outline, title: "About"),
                ],
              ),
            ),

            /// logout
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Center(
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      color: Color(0xff53B175),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// widget للـ item

class AccountTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const AccountTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        ),
        const Divider(height: 1),
      ],
    );
  }
}
