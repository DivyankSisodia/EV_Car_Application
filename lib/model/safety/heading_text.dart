import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../widget/right_headingtext.dart';

class SafetyHeading extends StatelessWidget {
  const SafetyHeading({
    super.key,
    required this.isPressed,
  });

  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: isPressed
          ? const RightHeadingText(
              heading: 'Safety & Security',
              subheading: 'Windows Open',
            )
              .animate()
              .fadeIn() // uses `Animate.defaultDuration`
              .scale(
                  duration: const Duration(
                      milliseconds: 1000)) // inherits duration from fadeIn
              .move(
                  delay: 1.seconds,
                  duration: 1200.ms) // runs after the above w/new duration
          // inherits the delay & duration from move
          : const RightHeadingText(
              heading: 'Safety & Security',
              subheading: '',
            ),
    );
  }
}
