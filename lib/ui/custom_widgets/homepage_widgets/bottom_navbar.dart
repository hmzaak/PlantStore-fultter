import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );

    // Container(
    //   margin: const EdgeInsets.all(10),
    //   height: 60,
    //   decoration: BoxDecoration(
    //     borderRadius: const BorderRadius.all(Radius.circular(25)),
    //     border: Border.all(),
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       IconButton(
    //         onPressed: () {
    //           setState(() {
    //             pageIndex = 0;
    //           });
    //         },
    //         icon: (pageIndex == 0)
    //             ? const Icon(
    //                 Icons.home_filled,
    //                 size: 35,
    //               )
    //             : const Icon(
    //                 Icons.home_outlined,
    //                 size: 35,
    //               ),
    //       ),
    //       IconButton(
    //         onPressed: () {
    //           setState(() {
    //             pageIndex == 1;
    //           });
    //         },
    //         icon: (pageIndex == 1)
    //             ? const Icon(
    //                 Icons.person,
    //                 size: 35,
    //               )
    //             : const Icon(
    //                 Icons.person_outlined,
    //                 size: 35,
    //               ),
    //       ),
    //       IconButton(
    //         onPressed: () {},
    //         icon: const Icon(
    //           Icons.shopping_cart,
    //           size: 35,
    //         ),
    //       ),
    //       IconButton(
    //         onPressed: () {},
    //         icon: const Icon(
    //           Icons.list,
    //           size: 35,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
