import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class CartItemsListView extends StatelessWidget {
  const CartItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final subText = lorem(paragraphs: 1, words: 3);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            buildCartItem(size, subText),
            buildCartItem(size, subText),
            buildCartItem(size, subText),
            buildCartItem(size, subText),
            buildCartItem(size, subText),
            buildCartItem(size, subText),
            buildCartItem(size, subText),
            buildCartItem(size, subText),
            buildCartItem(size, subText),
          ],
        ),
      ),
    );
  }
}

// Widget builder function to build cart items.
Widget buildCartItem(Size size, String subText) {
  return Container(
    height: size.height * 0.11,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    margin: const EdgeInsets.symmetric(vertical: 6),
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        Container(
          width: size.width * 0.21,
          height: size.height * 0.10,
          margin: const EdgeInsets.only(right: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/bonsai.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Lily Plant',
              style: TextStyle(
                color: Color(0xff184A2C),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(subText),
            SizedBox(
              width: size.width * 0.25,
              height: size.height * 0.03,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  plusMinusButton('-'),
                  const Text(
                    '2',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  plusMinusButton('+'),
                ],
              ),
            )
          ],
        ),
        const Spacer(),
        SizedBox(
          height: size.height * 0.10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(Icons.more_vert),
              Text(
                '\$26.0',
                style: TextStyle(
                  color: Colors.lightGreen[600],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget plusMinusButton(String sign) {
  return Container(
    alignment: Alignment.center,
    width: 40,
    decoration: BoxDecoration(
      border: Border.all(),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      sign,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
