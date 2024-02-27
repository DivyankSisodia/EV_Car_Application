import 'package:flutter/material.dart';

class SmallStackedIcon extends StatelessWidget {
  const SmallStackedIcon({
    super.key,
    required this.isPressed,
  });

  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 24,
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
          borderRadius: BorderRadius.circular(100),
        ),
        child: isPressed
            ? const Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 20,
              )
            : const Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              ),
      ),
    );
  }
}
