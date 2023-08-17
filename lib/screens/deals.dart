import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodpanda/utils/Colors/colors.dart';
import 'package:foodpanda/widgets/home_widgets/deals_widgets/card_for_tabview.dart';
import 'package:foodpanda/widgets/home_widgets/deals_widgets/popular.dart';
import 'package:foodpanda/utils/Common/media_quiery.dart';
import 'package:foodpanda/widgets/home_widgets/deals_widgets/top_widget_stack.dart';

class Deals extends StatefulWidget {
  const Deals({super.key});

  @override
  State<Deals> createState() => _DealsState();
}

class _DealsState extends State<Deals> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 253, 226, 235),
        body: Center(
          child: SizedBox(
            height: screenheight(context),
            child: Column(
              children: [
                const TopWidgetStack(),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "Get Rs.150 of your first order with everyday\nfavourite by using code: HCNC.T&C apply",
                    style: TextStyle(
                      color: SelfDefinedColors.pinkColor,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Image.asset(
                    "assets/images/splash.png",
                    width: 70.w,
                  ),
                ),
                cardForTabView(context, tabController),
                Expanded(
                  child: TabBarView(controller: tabController, children: const [
                    Popular(),
                    Text("data"),
                    Text("data"),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
