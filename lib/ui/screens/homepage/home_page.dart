import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const route = '/home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          topSection(context),
          searchBar,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Remcommended',
                  style: TextStyle(
                    color: Color(0xff184A2C),
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text('Top')),
              TextButton(onPressed: () {}, child: const Text('Indoor')),
              TextButton(onPressed: () {}, child: const Text('Outdoor')),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff184A2C),
        onTap: _onItemTapped,
      ),
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
                  onPressed: () {},
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
