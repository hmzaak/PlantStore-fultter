import 'package:flutter/material.dart';

class RecentViewedSection extends StatelessWidget {
  const RecentViewedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 8),
          child: const Text(
            'Recent Viewed',
            style: TextStyle(
              color: Color(0xff184A2C),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 90,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                // decoration: BoxDecoration(border: Border.all()),
                width: 250,
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      margin: const EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/bonsai.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Calathea',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff184A2C),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Its spines don\'t grow',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                // decoration: BoxDecoration(border: Border.all()),
                width: 250,
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      margin: const EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/bonsai.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Calathea',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff184A2C),
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Its spines don\'t grow',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
