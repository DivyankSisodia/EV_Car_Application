import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/title_heading.dart';

class InteriorHeadingtext extends StatelessWidget {
  const InteriorHeadingtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: Row(
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
    );
  }
}
