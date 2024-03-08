import 'dart:async';

import 'package:babyhelpshop/Dashboard.dart';
import 'package:babyhelpshop/LoginScreen.dart';
import 'package:babyhelpshop/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BabyShopHub',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade400)
      ),
      home:Dashboard() ,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return LoginScreen();
      },));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.pink.shade400,
        child: Lottie.network('https://lottie.host/c3ef2db4-7f9c-4ad6-bcb9-05ef90f59ba5/YFWVAtplvI.json'),
      ),
    );
  }
}
