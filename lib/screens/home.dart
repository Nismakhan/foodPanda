import 'package:flutter/material.dart';
import 'package:foodpanda/Resource/app_strings.dart';
import 'package:foodpanda/utils/Colors/colors.dart';
import 'package:foodpanda/widgets/home_widgets/shops_and_resturants.dart';
import 'package:foodpanda/widgets/home_widgets/your_resturant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: const IconThemeData(color: SelfDefinedColors.pinkColor),
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              AppStrings.homeString,
              style:
                  TextStyle(fontSize: 15, color: SelfDefinedColors.pinkColor),
            ),
            Text(
              "Johar tawn lahore",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite_outline_rounded,
                  // color: Colors.pink,
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/cart-arrow-down.png"),
              ],
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "Good evening,Mehroz\n",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                                "Whats in dinner?? There are\n567 resturant in your area\n"),
                          ],
                        ),
                        Image.asset(
                          "assets/images/food1.png",
                          width: 99,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.search,
                        ),
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                labelText: "search for shops and resturant"),
                          ),
                        )
                      ],
                    ),
                    const ShopsAndResturants(),
                    const YourResturants(),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
