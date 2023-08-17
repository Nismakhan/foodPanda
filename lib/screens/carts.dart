import 'package:flutter/material.dart';
import 'package:foodpanda/utils/Colors/colors.dart';
import 'package:foodpanda/utils/Common/media_quiery.dart';
import 'package:foodpanda/widgets/home_widgets/carts_widgets/amount_bill.dart';

class Carts extends StatelessWidget {
  const Carts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        iconTheme: const IconThemeData(color: SelfDefinedColors.pinkColor),
        leading: const Icon(
          Icons.close,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Cart",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            Text(
              "subway-Johar-tawn",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SizedBox(
          width: screenwidth(context),
          child: Stack(children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 110,
                width: screenwidth(context),
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Rs.482.60",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.pink,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Place Order'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenheight(context),
              child: Column(
                children: [
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Image.asset("assets/images/Character.png"),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text("Estimated delivery"),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "Now (25 min)",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            "1",
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Exclusive subway deal 1\n",
                            style: TextStyle(
                                fontSize: 13.5,
                                color: SelfDefinedColors.pinkColor),
                          ),
                          Text(
                            "Chicken Teriyaki,,Mirinda..",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const Text("Rs.560.00")
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const AmmountBills(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
