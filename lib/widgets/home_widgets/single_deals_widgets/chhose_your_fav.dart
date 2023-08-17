import 'package:flutter/material.dart';

class ChooseYourFavourite extends StatelessWidget {
  final String text;
  const ChooseYourFavourite({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(text),
        const SizedBox(
          width: 15,
        ),
        Container(
          width: 80,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          child: const Text(
            "1 required",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
