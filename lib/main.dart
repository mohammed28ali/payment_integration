import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment_gateway_integration/modules/register/register.dart';
import 'package:payment_gateway_integration/shared/network/dio.dart';

import 'modules/payment/toggle.dart';
import 'modules/payment/visaCard.dart';

void main() async{
  await DioHelperPayment.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Payment gateway integration',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          systemOverlayStyle: SystemUiOverlayStyle( //<-- SEE HERE
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      ),
      home: RegisterScreen(),
    );
  }
}

