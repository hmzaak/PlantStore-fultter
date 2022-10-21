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
      border: Border.all(),
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
            const Text('Lily Plant'),
            Text(subText),
            Container(
              width: 120,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '-',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Text(
                    '2',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '+',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        const Spacer(),
        Container(
          height: size.height * 0.10,
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Icon(Icons.more_vert),
              Text('\$26.0'),
            ],
          ),
        )
      ],
    ),
  );
}
