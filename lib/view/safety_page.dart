import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import '../controller/interior_controller.dart';
import '../model/safety/button_container.dart';
import '../model/safety/image_container.dart';
import '../model/safety/small_icon.dart';

class SafetySecurityPage extends ConsumerWidget {
  const SafetySecurityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPressed = ref.watch(interiorControllerProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            // Safety and Security Heading
            SafetyHeading(isPressed: isPressed),

            // Safety and Security Image
            AnimatedImageContainer(isPressed: isPressed),
            const Gap(30),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Stack(
                  children: [
                    // Safety and Security Buttons
                    ButtonContainer(isPressed: isPressed),

                    // Safety and Security Small Icon
                    SmallStackedIcon(isPressed: isPressed)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
