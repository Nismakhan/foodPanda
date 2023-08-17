import 'package:flutter/material.dart';
import 'package:foodpanda/utils/Colors/colors.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(30)),
        child: const Icon(
          Icons.arrow_back,
          size: 18,
          color: SelfDefinedColors.pinkColor,
        ),
      ),
    );
  }
}
