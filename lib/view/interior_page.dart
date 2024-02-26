import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/switch_controller.dart';
import '../model/interior/time_card.dart';
import '../widget/title_heading.dart';

class InteriorPage extends ConsumerWidget {
  const InteriorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.back),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const TitleHeading(
                        title: 'Interior & Comfort',
                      ),
                      Text(
                        'Cooling to 21°C',
                        style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            const Gap(15),

            // This is the main content of the page
            Column(
              children: [
                Center(
                  child: Text(
                    'In-car Temperature',
                    style: GoogleFonts.poppins(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    '32°C',
                    style: GoogleFonts.poppins(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 255,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/iterior.png'),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your Climate Schedule',
                  style: GoogleFonts.poppins(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),

            const Gap(12),

            Column(
              children: [
                TimeCard(
                  days: 'M W F',
                  time: '00:00 to 08:00',
                  switchStateProvider: val1Provider,
                  toggle: toggleVal1,
                ),
                const Gap(20),
                TimeCard(
                  days: 'Tu Th Sat',
                  time: '22:00 to 09:00',
                  switchStateProvider: val2Provider,
                  toggle: toggleVal2,
                ),
                const Gap(20),
                TimeCard(
                  days: 'W F Sun',
                  time: '23:00 to 06:00',
                  switchStateProvider: val3Provider,
                  toggle: toggleVal3,
                ),
                const Gap(20),
              ],
            )
          ],
        ),
      ),
    );
  }
}
