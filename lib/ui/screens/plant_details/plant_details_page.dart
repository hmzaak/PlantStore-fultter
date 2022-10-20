import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class PlantDetailsPage extends StatelessWidget {
  const PlantDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Stack(
        children: [
          backPage(size),
          bottomDetailsSheet(),
        ],
      ),
    );
  }
}

Widget backPage(Size size) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          Row(
            children: [
              ClipOval(
                child: Container(
                  height: size.width * 0.1,
                  width: size.width * 0.1,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),
              ClipOval(
                child: Container(
                  height: size.width * 0.1,
                  width: size.width * 0.1,
                  decoration: const BoxDecoration(
                    color: Color(0xff184A2C),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: size.height * 0.10),
          Image.asset('assets/schefflera.png'),
        ],
      ),
    );

Widget bottomDetailsSheet() {
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
