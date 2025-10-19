import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'home.dart';
import 'splashwedgets/posetioned.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _LoginState();
}

class _LoginState extends State<Splashscreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    // البداية: fade in بعد 1 ثانية
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    // fade out بعد 5 ثواني
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _opacity = 0.0;
      });
    });

    // الانتقال للصفحة التالية بعد fade out (مثلاً بعد 6 ثواني)
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5DBAB),
      body: Stack(
        children: [
          AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(seconds: 3),
            child: Posetioned(),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 3),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 300,
                    height: 300,
                  ),
                ),
                const Gap(20),
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 3),
                  child: Text(
                    'coffee lab'.toUpperCase(),
                    style: const TextStyle(
                      fontFamily: 'Font',
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D4037),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
