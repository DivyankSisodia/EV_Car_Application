import 'package:flutter/material.dart';

import '../../widget/title_heading.dart';
import '../../widget/title_name.dart';

class DHomeHeading extends StatelessWidget {
  const DHomeHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleHeading(),
              TitleName(),
            ],
          ),
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              'assets/icons/logo1.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
