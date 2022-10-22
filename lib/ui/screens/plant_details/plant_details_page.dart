import 'package:flutter/material.dart';
import 'package:plantstore/ui/custom_widgets/plant_details_page_widgets/draggable_scrollable_sheet.dart';

class PlantDetailsPage extends StatelessWidget {
  static const route = '/plantDetails-page';
  const PlantDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Stack(
        children: [
          backPage(context, size),
          const MyDraggableScrollableSheet(),
        ],
      ),
    );
  }
}

Widget backPage(BuildContext context, Size size) => Padding(
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
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
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
