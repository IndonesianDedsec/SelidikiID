import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:selidiki_id/constants/assets.dart';
import 'package:selidiki_id/home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for splash screen
    Future.delayed(const Duration(seconds: 5), () {
      // Navigate to home screen after the delay
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => const Home(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(Assets.assetsSplash, width: 200, height: 200),
            Text(
              'Welcome to Selidiki ID',
              style: TextStyle(fontSize: 24, fontFamily: 'pixels'),
            ),
            SizedBox(
              width: 200,
              child: LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                backgroundColor: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
