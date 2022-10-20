import 'package:flutter/material.dart';

class PlantDetailsPage extends StatelessWidget {
  const PlantDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Padding(
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
            Image.asset('assets/scheffleraMain.png')
          ],
        ),
      ),
    );
  }
}
