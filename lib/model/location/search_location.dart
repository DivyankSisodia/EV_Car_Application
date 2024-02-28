import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        child: TextField(
          autocorrect: true,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            hintText: 'Search for a location',
            hintStyle: GoogleFonts.poppins(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 53, 53, 53),
            ),
            prefixIcon: const Icon(
              Iconsax.search_favorite,
              color: Color.fromARGB(255, 53, 53, 53),
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 242, 242, 242),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.black87,
                )),
          ),
        ),
      ),
    );
  }
}
