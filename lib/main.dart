// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_app/assets/color.dart';
import 'package:rent_app/bottomApp.dart';
import 'package:rent_app/screen/home/homepage.dart';
import 'package:rent_app/screen/home/topup/topUpPage.dart';
import 'package:rent_app/screen/login/loginPage.dart';
import 'package:rent_app/screen/order/detailOrder.dart';
import 'package:rent_app/screen/order/myOrder.dart';
import 'package:rent_app/screen/order/orderPage.dart';
import 'package:rent_app/screen/order/preOrder.dart';
import 'package:rent_app/screen/profile/profilePage.dart';
import 'package:rent_app/screen/profile/proofPayment.dart';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData(
            textTheme:
                GoogleFonts.interTextTheme(Theme.of(context).textTheme),
            bottomNavigationBarTheme:
                BottomNavigationBarThemeData(selectedItemColor: primary),
          ),
          home: SignInPage2(),
        );
      },
    );
  }
}
