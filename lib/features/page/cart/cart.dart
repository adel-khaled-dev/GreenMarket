import 'package:flutter/material.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  final List<CartItemModel> cartItems = [
    CartItemModel(
      name: 'Bell Pepper Red',
      subTitle: '1kg',
      price: 4.99,
      image: 'assets/images/bnananas.png',
      quantity: 1,
    ),
    CartItemModel(
      name: 'Egg Chicken Red',
      subTitle: '4pcs, Price',
      price: 1.99,
      image: 'assets/images/bnananas.png',
      quantity: 1,
    ),
    CartItemModel(
      name: 'Organic Bananas',
      subTitle: '12kg, Price',
      price: 3.00,
      image: 'assets/images/bnananas.png',
      quantity: 1,
    ),
    CartItemModel(
      name: 'Ginger',
      subTitle: '250gm, Price',
      price: 2.99,
      image: 'assets/images/bnananas.png',
      quantity: 1,
    ),
  ];

  double get totalPrice {
    double total = 0;
    for (var item in cartItems) {
      total += item.price * item.quantity;
    }
    return total;
  }

  void increaseQuantity(int index) {
    setState(() {
      cartItems[index].quantity++;
    });
  }

  void decreaseQuantity(int index) {
    setState(() {
      if (cartItems[index].quantity > 1) {
        cartItems[index].quantity--;
      }
    });
  }

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              itemCount: cartItems.length,
              separatorBuilder: (context, index) => const Divider(
                color: Color(0xffE2E2E2),
                thickness: 1,
                height: 24,
              ),
              itemBuilder: (context, index) {
                final item = cartItems[index];

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.center,
                      child: Image.asset(item.image, fit: BoxFit.contain),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  item.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () => removeItem(index),
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item.subTitle,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: 14),
                          Row(
                            children: [
                              quantityButton(
                                icon: Icons.remove,
                                onTap: () => decreaseQuantity(index),
                              ),
                              const SizedBox(width: 14),
                              Text(
                                '${item.quantity}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 14),
                              quantityButton(
                                icon: Icons.add,
                                iconColor: const Color(0xff53B175),
                                onTap: () => increaseQuantity(index),
                              ),
                              const Spacer(),
                              Text(
                                '\$${(item.price * item.quantity).toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

          /// زرار checkout
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
            child: SafeArea(
              top: false,
              child: SizedBox(
                width: double.infinity,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff53B175),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      const Text(
                        'Go to Checkout',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.15),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '\$${totalPrice.toStringAsFixed(2)}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget quantityButton({
    required IconData icon,
    required VoidCallback onTap,
    Color iconColor = Colors.grey,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE2E2E2)),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Icon(icon, color: iconColor),
      ),
    );
  }
}

class CartItemModel {
  final String name;
  final String subTitle;
  final double price;
  final String image;
  int quantity;

  CartItemModel({
    required this.name,
    required this.subTitle,
    required this.price,
    required this.image,
    required this.quantity,
  });
}
