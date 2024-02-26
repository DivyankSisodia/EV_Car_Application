import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TemperatureButton extends StatelessWidget {
  const TemperatureButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 100, 100, 100),
            width: 2,
          ),
          color: const Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset('assets/icons/power-off.png'),
            ),
            Text(
              'Stop Climate',
              style: GoogleFonts.poppins(
                fontSize: 23.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
