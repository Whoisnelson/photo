import 'dart:ui';

import 'package:flutter/material.dart';

class MyGlass extends StatelessWidget {
  const MyGlass({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        height: 300,
        width: 413,
        child: Stack(
          children: [
            // BLUR
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(),
            ),
            // GRADIENT
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.1)
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
