import 'package:flutter/material.dart';
import 'package:foodpanda/app/route/route.dart';
import 'package:foodpanda/utils/Colors/colors.dart';
import 'package:foodpanda/utils/Common/arrow_back.dart';
import 'package:foodpanda/utils/Common/media_quiery.dart';
import 'package:foodpanda/widgets/home_widgets/single_deals_widgets/chhose_your_fav.dart';
import 'package:foodpanda/widgets/home_widgets/single_deals_widgets/radiobuttions.dart';

class SingleDeals extends StatelessWidget {
  SingleDeals({
    super.key,
  });
  final ValueNotifier<int> counter = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: SizedBox(
          height: screenheight(context),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/Exclusive deal 1.png",
                    ),
                    const Positioned(
                      top: 10,
                      left: 10,
                      child: ArrowBack(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Exclusive Subway Deal 1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "6 inch sub & 250 ml drink",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text("Rs.333.00"),
                    ],
                  ),
                ),
                const Divider(
                  height: 10,
                  color: Color.fromARGB(255, 112, 112, 112),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ChooseYourFavourite(text: "Choose Your Flavor"),
                const RadioButtions(
                  radioListOptions: [
                    'Chicken Tikka',
                    'Chicken Teriyaki',
                    'Chicken Fajita',
                    'BBQ',
                  ],
                ),
                // ChooseYourFavourite(text: "Choose Your Flavor\nfor drink"),
                // const RadioButtions(
                //   radioListOptions: [
                //     'Chicken Tikka',
                //     'Chicken Teriyaki',
                //     'Chicken Fajita',
                //     'BBQ',
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        counter.value++;
                      },
                      child: Container(
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.add,
                          color: SelfDefinedColors.pinkColor,
                        ),
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: counter,
                      builder: (context, value, child) {
                        return Text(value.toString());
                      },
                    ),
                    InkWell(
                      onTap: () {
                        counter.value--;
                      },
                      child: Container(
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.remove,
                          color: SelfDefinedColors.pinkColor,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              SelfDefinedColors.pinkColor)),
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRouter.carts);
                      },
                      child: const Text("Add to cart"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
