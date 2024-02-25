import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class DHomeBatteryStatus extends StatelessWidget {
  const DHomeBatteryStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Battery',
          style: GoogleFonts.inter(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Text(
                '150Km',
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                ),
              ),
            ),
            const Gap(10),
            Text(
              '52%',
              style: GoogleFonts.inter(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
