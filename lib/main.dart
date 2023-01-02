import 'dart:io';

import 'package:elearning/routes/route_generator.dart';
import 'package:elearning/screens/splash_screen.dart';
import 'package:elearning/view_model/common_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import 'api/utils/hive_utils.dart';
import 'api/utils/preference_utils.dart';
import 'constants/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dotenv.load(fileName: ".env");
  await PreferenceUtils.init();
  await Hive.initFlutter();
  await HiveUtils.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      useDefaultLoading: false,
      overlayWidget: Center(
        child: Center(
            child: Container(
                height: 250,
                width: 250,
                child: Lottie.asset('assets/preloader.json'))),
      ),
      overlayOpacity: 0.8,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CommonViewModel(),
          ),
        ],
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: MaterialApp(
            title: 'E-learing',
            color: kBlack,
            theme: ThemeData(
                scaffoldBackgroundColor: Kbackgroundcolor,
                colorScheme: ColorScheme.fromSwatch().copyWith(
                  primary: kPrimaryColor,
                ),
                appBarTheme: const AppBarTheme(
                  color: kBlack,
                  foregroundColor: kPrimaryColor,
                  centerTitle: true,
                  iconTheme: IconThemeData(color: Colors.white),
                  elevation: 0,
                ),
                fontFamily: "Muli",
                textTheme: const TextTheme(
                    bodyText1: TextStyle(color: Colors.black),
                    bodyText2: TextStyle(color: Colors.black))
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            onGenerateRoute: RouteGenerator.generateRoute,

          ),
        ),
      ),
    );
  }
}
