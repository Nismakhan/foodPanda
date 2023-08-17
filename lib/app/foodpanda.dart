import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:foodpanda/app/route/route.dart';
import 'package:foodpanda/controllers/home_page_controller.dart';
import 'package:foodpanda/screens/home_screen.dart';
import 'package:foodpanda/screens/responsive_widgets_practice.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodPanda extends StatelessWidget {
  const FoodPanda({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<HomePageControllerCubit>(
                create: (BuildContext context) => HomePageControllerCubit(0),
              ),
            ],
            child: MaterialApp(
              home: ResponsiveUtilsPractice(),
              theme: ThemeData(
                  textTheme: GoogleFonts.poppinsTextTheme(
                      Theme.of(context).textTheme)),
              debugShowCheckedModeBanner: false,
              onGenerateRoute: (settings) {
                return AppRouter.onGenerateRoute(settings);
              },
            ),
          );
        });
  }
}
