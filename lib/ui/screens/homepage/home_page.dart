import 'package:flutter/material.dart';
import 'package:plantstore/ui/custom_widgets/homepage_widgets/bottom_navbar.dart';
import 'package:plantstore/ui/custom_widgets/homepage_widgets/buttons_row.dart';
import 'package:plantstore/ui/custom_widgets/homepage_widgets/plants_list.dart';
import 'package:plantstore/ui/custom_widgets/homepage_widgets/recent_viewed_section.dart';
import 'package:plantstore/ui/screens/cart_page/cart_page.dart';

class HomePage extends StatelessWidget {
  static const route = '/home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          topSection(context),
          searchBar,
          const ButtonsRow(),
          SizedBox(height: height * 0.37, child: const PlantsList()),
          SizedBox(height: height * 0.04),
          const RecentViewedSection(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

Widget topSection(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: [
        SizedBox(height: height * 0.05),
        Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
            ),
            const Spacer(),
            ClipOval(
              child: Container(
                height: width * 0.1,
                width: width * 0.1,
                decoration: const BoxDecoration(
                  color: Color(0xff184A2C),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(CartPage.route);
                  },
                  icon: const Icon(Icons.shopping_cart_outlined),
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        SizedBox(height: height * 0.02),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: EdgeInsets.only(bottom: height * 0.03),
            width: width * 0.6,
            child: const Text(
              'Let\'s find your plants!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff184A2C),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget searchBar = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16),
  child: TextField(
    decoration: InputDecoration(
      hintText: 'search plant',
      hintStyle: const TextStyle(
        color: Color(0xff184A2C),
      ),
      filled: true,
      prefixIcon: const Icon(
        Icons.search,
        color: Color(0xff184A2C),
      ),
      suffixIcon: const Icon(
        Icons.mic,
        color: Color(0xff184A2C),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
    ),
    cursorColor: const Color(0xff184A2C),
  ),
);
