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
        TextButton(onPressed: () {}, child: const Text('Top')),
        TextButton(onPressed: () {}, child: const Text('Indoor')),
        TextButton(onPressed: () {}, child: const Text('Outdoor')),
      ],
    );
  }
}
