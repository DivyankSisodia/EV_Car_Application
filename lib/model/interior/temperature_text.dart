import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TemperatureText extends StatelessWidget {
  const TemperatureText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
