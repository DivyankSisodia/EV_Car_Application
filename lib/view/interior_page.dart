import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/switch_controller.dart';
import '../model/interior/heading_text.dart';
import '../model/interior/interior_image.dart';
import '../model/interior/temperature_button.dart';
import '../model/interior/temperature_schedule.dart';
import '../model/interior/temperature_text.dart';
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
            const InteriorHeadingtext(),

            const Gap(10),

            // This is the main content of the page
            const TemperatureText(),
            
            const InteriorImage(),

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

            const TemperatureSchedule(),

            const Gap(8),

            const TemperatureButton()
          ],
        ),
      ),
    );
  }
}







