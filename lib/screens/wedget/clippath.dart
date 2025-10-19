import 'package:flutter/material.dart';
import 'custumclipper.dart';
import 'shadow.dart';

class CustomWaveHeader extends StatelessWidget {
  const CustomWaveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: Shadowclipper(),
          child: Container(
            height: 220,
            color: Colors.brown.withValues(alpha: 0.5),
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: 220,
            color: Colors.brown,
            child: const Center(
              child: Text(
                'Home Page',
                style: TextStyle(
                  color: Color.fromARGB(255, 254, 248, 191),
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(3, 6),
                      blurRadius: 10,
                      color: Color.fromARGB(232, 255, 230, 141),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
