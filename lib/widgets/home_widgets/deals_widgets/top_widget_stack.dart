import 'package:flutter/material.dart';
import 'package:foodpanda/utils/Colors/colors.dart';
import 'package:foodpanda/utils/Common/arrow_back.dart';

class TopWidgetStack extends StatelessWidget {
  const TopWidgetStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset("assets/images/deal.png"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ArrowBack(),
              SizedBox(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.share,
                          size: 18,
                          color: SelfDefinedColors.pinkColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "assets/images/info-circle.png",
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.center,
          widthFactor: 100,
          heightFactor: 2,
          child: Column(
            children: [
              const Text(
                "Sub-way Johar tawn",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "Delivery 30 mins",
                  style: TextStyle(color: Color.fromARGB(255, 233, 230, 230)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star),
                  Text("4.2 (5k+)"),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
