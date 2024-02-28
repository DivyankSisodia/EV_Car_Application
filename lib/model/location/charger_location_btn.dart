import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChargerLocationButton extends StatelessWidget {
  const ChargerLocationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 242, 242, 242),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black87,
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(
                Icons.bolt_outlined,
                color: Colors.grey.shade500,
              ),
            ),
            Text(
              'Search for a charger',
              style: GoogleFonts.poppins(
                color: Colors.black87,
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
