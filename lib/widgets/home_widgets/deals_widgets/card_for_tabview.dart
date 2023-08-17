import 'package:flutter/material.dart';
import 'package:foodpanda/utils/Colors/colors.dart';

Card cardForTabView(BuildContext context, TabController tabController) {
  return Card(
    elevation: 7,
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8, bottom: 9),
            child: Container(
              width: 200,
              height: 30,
              decoration: BoxDecoration(
                  color: SelfDefinedColors.pinkColor,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "Food Fast Deals",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          TabBar(
              indicatorColor: SelfDefinedColors.pinkColor,
              controller: tabController,
              tabs: [
                Tab(
                  child: Text(
                    "Popular",
                    style: textStyleForTabBar(),
                  ),
                ),
                Tab(
                  child: Text("Exclusive subway deals",
                      style: textStyleForTabBar()),
                ),
                Tab(
                  child: Text(
                    "Crazy deals",
                    style: textStyleForTabBar(),
                  ),
                ),
              ]),
        ],
      ),
    ),
  );
}

TextStyle textStyleForTabBar() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
}
