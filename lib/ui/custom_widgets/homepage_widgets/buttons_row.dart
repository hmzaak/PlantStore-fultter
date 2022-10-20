import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
        TextButton(
          onPressed: () {},
          child: const Text(
            'Top',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Indoor',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Outdoor',
              style: TextStyle(color: Colors.grey),
            )),
      ],
    );
  }
}
