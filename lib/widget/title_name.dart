import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleName extends StatelessWidget {
  const TitleName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Divyank',
      style: GoogleFonts.poppins(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
