import 'package:flutter/material.dart';
import 'package:foodpanda/utils/Colors/colors.dart';

class AmmountBills extends StatelessWidget {
  const AmmountBills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Subtotal"),
              Text("Rs.560.00"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Discount"),
              Text("-Rs.227.00"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Delivery fee"),
              Text("Rs.60.00"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("VAT"),
              Text("Rs.89.00"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset("assets/images/bookmark.png"),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Apply a voucher",
                style:
                    TextStyle(color: SelfDefinedColors.pinkColor, fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}
