import 'package:flutter/material.dart';
import 'package:food_prime_app/theme/style.dart';

class SplashScreen extends StatefulWidget {
  final Widget child;
  const SplashScreen({super.key, required this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000)).then((value) {
      return Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widget.child),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColorED6E1B,
      body: Center(
        child: Image.asset("assets/app_logo.png"),
      ),
    );
  }
}
