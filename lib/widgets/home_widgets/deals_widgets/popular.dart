import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodpanda/app/route/route.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/fire.png"),
                  SizedBox(
                    width: 12.w,
                  ),
                  const Text("Popular"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Most Ordered right now\n"),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(AppRouter.singleDeals);
                },
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Exclusive subway deal 1"),
                        Text("6 inche sub & 250 ml drink"),
                        Text("Rs: 330.00"),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      "assets/images/burger.png",
                      width: 80.w,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 20,
                color: Colors.grey,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Drinks and cookies"),
                      Text("6 inche sub & 250 ml drink"),
                      Text("Rs: 330.00"),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/images/buiscuits.png",
                    width: 80.w,
                  ),
                ],
              ),
              const Divider(
                height: 20,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
