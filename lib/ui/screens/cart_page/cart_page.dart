import 'package:flutter/material.dart';
import 'package:plantstore/ui/custom_widgets/cart_page_widgets/cart_items_listview.dart';

class CartPage extends StatelessWidget {
  static const route = '/cart-page';
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: size.height * 0.07),
          topBar(context, size),
          const CartItemsListView(),
        ],
      ),
      bottomSheet: myBottomSheet(size),
    );
  }
}

Widget topBar(BuildContext context, Size size) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Container(
            height: size.width * 0.1,
            width: size.width * 0.1,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new),
              color: Colors.black,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: const Color(0xff184A2C),
          )
        ],
      ),
    );

Widget myBottomSheet(Size size) {
  TextStyle myStyle = const TextStyle(
    fontWeight: FontWeight.bold,
    color: Color(0xff184A2C),
    fontSize: 16,
  );
  return Container(
    height: size.height * 0.32,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      color: Color.fromARGB(255, 222, 238, 223),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Text(
                  'Subprice',
                  style: myStyle,
                ),
                const Spacer(),
                Text(
                  '\$74.00',
                  style: myStyle,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Text(
                  'Subprice',
                  style: myStyle,
                ),
                const Spacer(),
                Text(
                  '\$74.00',
                  style: myStyle,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const Divider(
              thickness: 3,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Row(
              children: [
                Text(
                  'Total:',
                  style: myStyle,
                ),
                const Spacer(),
                Text(
                  '\$84',
                  style: myStyle,
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                backgroundColor: const Color(0xff184A2C),
              ),
              onPressed: () {},
              child: const Text('Place your order'),
            ),
          )
        ],
      ),
    ),
  );
}
