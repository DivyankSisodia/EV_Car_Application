import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

import '../controller/interior_controller.dart';
import '../widget/right_headingtext.dart';

class SafetySecurityPage extends ConsumerWidget {
  const SafetySecurityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPressed = ref.watch(interiorControllerProvider);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: isPressed
                  ? const RightHeadingText(
                      heading: 'Safety & Security',
                      subheading: 'Windows Open',
                    )
                  : const RightHeadingText(
                      heading: 'Safety & Security',
                      subheading: '',
                    ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    duration: const Duration(
                        milliseconds: 2000), // Animation duration
                    bottom: isPressed ? 40 : -100,
                    right: 120,
                    child: AnimatedContainer(
                      duration: const Duration(
                          milliseconds: 2000), // Animation duration
                      height: isPressed
                          ? 30
                          : 0, // Change height based on isPressed
                      width:
                          isPressed ? 30 : 0, // Change width based on isPressed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: isPressed
                            ? const Color.fromARGB(255, 211, 69, 59)
                                .withOpacity(0.05)
                            : Colors
                                .transparent, // Change color based on isPressed
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
                    duration: const Duration(
                        milliseconds: 2000), // Animation duration
                    bottom: isPressed ? 40 : -100,
                    left: 120,
                    child: AnimatedContainer(
                      duration: const Duration(
                          milliseconds: 2000), // Animation duration
                      height: isPressed
                          ? 30
                          : 0, // Change height based on isPressed
                      width:
                          isPressed ? 30 : 0, // Change width based on isPressed
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: isPressed
                            ? const Color.fromARGB(255, 211, 69, 59)
                                .withOpacity(0.05)
                            : Colors
                                .transparent, // Change color based on isPressed
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
            ),
            const Gap(30),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 85, 85, 85),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 237, 237, 237),
                                      spreadRadius: 5,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        'assets/icons/lock.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                      const Gap(5),
                                      Text(
                                        'Unlock',
                                        style: GoogleFonts.poppins(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Gap(15),
                            Expanded(
                              flex: 5,
                              child: Container(
                                height: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 85, 85, 85),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 237, 237, 237),
                                      spreadRadius: 5,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    ref
                                        .read(
                                            interiorControllerProvider.notifier)
                                        .changeInterior();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image.asset(
                                          'assets/icons/signal-stream.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        const Gap(5),
                                        Text(
                                          'Phone Key',
                                          style: GoogleFonts.poppins(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w500,
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
                    ),
                    Positioned(
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
                    )
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
