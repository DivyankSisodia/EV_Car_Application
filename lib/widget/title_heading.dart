import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleHeading extends StatelessWidget {
  const TitleHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Good Morning,',
      style: GoogleFonts.poppins(
        fontSize: 30.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
