import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class MyDraggableScrollableSheet extends StatelessWidget {
  const MyDraggableScrollableSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = lorem(paragraphs: 1, words: 40);
    return DraggableScrollableSheet(
      initialChildSize: .2,
      minChildSize: .1,
      maxChildSize: .6,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                plantNameSection(),
                aboutSection(text),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget plantNameSection() {
  TextStyle buttonStyle = const TextStyle(
    color: Colors.white,
    fontSize: 18,
  );
  return Container(
    margin: const EdgeInsets.symmetric(
      vertical: 40,
      horizontal: 20,
    ),
    decoration: BoxDecoration(
      border: Border.all(),
    ),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Schefflera',
              style: TextStyle(
                color: Color(0xff184A2C),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              '\$25.00',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.lightGreen,
              ),
            ),
          ],
        ),
        const Spacer(),
        Container(
          height: 35,
          width: 80,
          decoration: BoxDecoration(
            color: const Color(0xff184A2C),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('-', style: buttonStyle),
              Text('2', style: buttonStyle),
              Text('+', style: buttonStyle),
            ],
          ),
        )
      ],
    ),
  );
}

Widget aboutSection(String text) {
  return Container(
    height: 170,
    margin: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(border: Border.all()),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          'About',
          style: TextStyle(
            color: Color(0xff184A2C),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          text,
        ),
      ],
    ),
  );
}
