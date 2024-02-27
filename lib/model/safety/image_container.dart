import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/right_headingtext.dart';

class AnimatedImageContainer extends StatelessWidget {
  const AnimatedImageContainer({
    super.key,
    required this.isPressed,
  });

  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000), // Animation duration
            bottom: isPressed ? 40 : -100,
            right: 120,
            child: AnimatedContainer(
              duration:
                  const Duration(milliseconds: 1200), // Animation duration
              height: isPressed ? 30 : 0, // Change height based on isPressed
              width: isPressed ? 30 : 0, // Change width based on isPressed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: isPressed
                    ? const Color.fromARGB(255, 211, 69, 59).withOpacity(0.05)
                    : Colors.transparent, // Change color based on isPressed
                boxShadow: isPressed
                    ? [
                        BoxShadow(
                          color: const Color.fromARGB(255, 225, 35, 22)
                              .withOpacity(0.8),
                          spreadRadius: 25,
                          blurRadius: 40,
                          offset: const Offset(0, 3),
                        ),
                      ]
                    : [], // Add shadow based on isPressed
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 2000), // Animation duration
            bottom: isPressed ? 40 : -100,
            left: 120,
            child: AnimatedContainer(
              duration:
                  const Duration(milliseconds: 2000), // Animation duration
              height: isPressed ? 30 : 0, // Change height based on isPressed
              width: isPressed ? 30 : 0, // Change width based on isPressed
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: isPressed
                    ? const Color.fromARGB(255, 211, 69, 59).withOpacity(0.05)
                    : Colors.transparent, // Change color based on isPressed
                boxShadow: isPressed
                    ? [
                        BoxShadow(
                          color: const Color.fromARGB(255, 225, 35, 22)
                              .withOpacity(0.8),
                          spreadRadius: 25,
                          blurRadius: 40,
                          offset: const Offset(0, 3),
                        ),
                      ]
                    : [], // Add shadow based on isPressed
              ),
            ),
          ),
          Stack(
            children: [
              Center(
                child: Image.asset('assets/images/full_top_view.png'),
              ),
              Center(
                child: isPressed
                    ? const Icon(
                        CupertinoIcons.lock_open,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 100,
                      )
                    : const Icon(
                        CupertinoIcons.lock,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 100,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
          : const RightHeadingText(
              heading: 'Safety & Security',
              subheading: '',
            ),
    );
  }
}
