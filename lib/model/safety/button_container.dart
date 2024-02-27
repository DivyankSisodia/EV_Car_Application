import 'package:car_application/view/phone_key_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/interior_controller.dart';

class ButtonContainer extends ConsumerWidget {
  const ButtonContainer({
    super.key,
    required this.isPressed,
  });

  final bool isPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
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
                    color: const Color.fromARGB(255, 85, 85, 85),
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
                        .read(interiorControllerProvider.notifier)
                        .changeInterior();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        isPressed
                            ? Image.asset(
                                'assets/icons/lock.png',
                                height: 30,
                                width: 30,
                              )
                            : Image.asset(
                                'assets/icons/unlock.png',
                                height: 30,
                                width: 30,
                              ),
                        const Gap(5),
                        isPressed
                            ? Text(
                                'Lock',
                                style: GoogleFonts.poppins(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            : Text(
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
            ),
            const Gap(15),
            Expanded(
              flex: 5,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 85, 85, 85),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const PhoneKeyScreen()),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
    );
  }
}
