import 'package:flutter/material.dart';

import '../../widget/right_headingtext.dart';

class LocationHeading extends StatelessWidget {
  const LocationHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: RightHeadingText(
        heading: 'Locations & Maps',
        subheading: '900 Cool St, San Francisco, CA',
      ),
    );
  }
}
