import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theming/colors.dart';

class AppbarFormating extends StatefulWidget {
  const AppbarFormating({super.key});

  @override
  State<AppbarFormating> createState() => _AppbarFormatingState();
}

class _AppbarFormatingState extends State<AppbarFormating> {

  double opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('write'.tr),
      titleSpacing: 5,
      actions: [
        GestureDetector(
          onTapDown: (_) => setState(() => opacity = 0.6),
          onTapUp: (_) => setState(() => opacity = 1.0),
          onTapCancel: () => setState(() => opacity = 1.0), // Handles fast taps
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: opacity, end: opacity),
            duration: Duration(milliseconds: 100), // Smoothens transitions
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: child,
              );
            },
            child: Icon(Icons.check, color: DefaultColors.mainBlueAccent, size: 30),
          ),
        )

      ],
    );
  }
}
