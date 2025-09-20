import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.1),
      body: Column(
        children: [
          Image.asset("assets/e5e693f5ca8db474da33efb0ad5b498bc1a6cdff.png"),
        ],
      ),
    );
  }
}
