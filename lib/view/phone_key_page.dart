import 'package:car_application/controller/phone_key_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/right_headingtext.dart';

class PhoneKeyScreen extends ConsumerWidget {
  const PhoneKeyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isEnabled = ref.watch(phoneKeyControllerProvider);
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: isEnabled
                  ? const RightHeadingText(
                      heading: 'Safety & Security',
                      subheading: 'Enabled',
                    )
                  : const RightHeadingText(
                      heading: 'Safety & Security',
                      subheading: 'Not Set Up',
                    ).animate().fade(duration: 500.ms).scale(delay: 200.ms),
            ),
            const Gap(10),

            isEnabled
                ? Image.asset('assets/images/phone_key1.png').animate().fade(
                    begin: 0.0,
                    end: 1.0,
                    duration: const Duration(milliseconds: 1200))
                : Image.asset('assets/images/phone_key2.png').animate().fade(
                    begin: 0.0,
                    end: 1.0,
                    duration: const Duration(milliseconds: 1200)),

            const Gap(25),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Use your phone to lock and unlock your car, even when it is out of battery.\n\nYou can also share a mobile key so that other people can use unlock your car.',
                style: GoogleFonts.poppins(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),

            // Button

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GestureDetector(
                onTap: () {
                  final snackBar = SnackBar(
                    content: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 208, 208, 208),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Temporary Key Shared',
                            style: GoogleFonts.poppins(
                              color: Colors.black87,
                              fontSize: 19.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    duration: const Duration(seconds: 5),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color.fromARGB(255, 85, 85, 85),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/signal-stream.png'),
                        const Gap(20),
                        Text(
                          'Share Tempopary Key',
                          style: GoogleFonts.poppins(
                              fontSize: 19.0, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Gap(15),
            isEnabled
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color.fromARGB(255, 85, 85, 85),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          ref
                              .watch(phoneKeyControllerProvider.notifier)
                              .enabledKey();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Image.asset('assets/icons/signal-stream.png'),
                              const Gap(20),
                              Text(
                                'Enroll Device Now',
                                style: GoogleFonts.poppins(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFF751010),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          ref
                              .watch(phoneKeyControllerProvider.notifier)
                              .enabledKey();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Image.asset('assets/icons/red_signal-stream.png'),
                              const Gap(20),
                              Text(
                                'Remove key from device',
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFF751010),
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
