import 'package:flutter/material.dart';

class RecentViewedSection extends StatelessWidget {
  const RecentViewedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          height: size.height * 0.096,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                margin: const EdgeInsets.symmetric(horizontal: 8),
                // decoration: BoxDecoration(border: Border.all()),
                width: size.width * 0.6,
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.17,
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
                width: size.width * 0.6,
                child: Row(
                  children: [
                    Container(
                      width: size.width * 0.17,
                      margin: const EdgeInsets.only(right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1520412099551-62b6bafeb5bb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
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
