import 'package:car_application/widget/title_heading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RightHeadingText extends StatelessWidget {
  const RightHeadingText({
    super.key,
    required this.heading,
    this.subheading,
  });

  final String heading;
  final String? subheading;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TitleHeading(
              title: heading,
            ),
            Text(
              subheading ?? '',
              style: GoogleFonts.poppins(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )
      ],
    );
  }
}
