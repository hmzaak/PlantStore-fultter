import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class MyDraggableScrollableSheet extends StatelessWidget {
  const MyDraggableScrollableSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                featureSection(size),
                bottomSection(size),
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

Widget featureSection(Size size) {
  // Widget builder function for features.
  Widget buildFeature(String featureName, String featureValue, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      margin: const EdgeInsets.symmetric(horizontal: 12),
      width: size.width * 0.38,
      child: Row(
        children: [
          ClipOval(
            child: Container(
              height: size.width * 0.2,
              width: size.width * 0.15,
              decoration: const BoxDecoration(
                color: Color(0xff184A2C),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  featureName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                Text(
                  featureValue,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff184A2C),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Return scrollable row of features
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 40),
    height: 80,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        buildFeature('Height', '8.2"', Icons.height),
        buildFeature('Humadity', '62%', Icons.water_drop),
        buildFeature('Width', '4.3"', Icons.width_normal_rounded),
      ],
    ),
  );
}

Widget bottomSection(Size size) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[350],
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: size.width * 0.7,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
            label: const Text('Buy Now'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              backgroundColor: const Color(0xff184A2C),
            ),
          ),
        ),
      ],
    );
