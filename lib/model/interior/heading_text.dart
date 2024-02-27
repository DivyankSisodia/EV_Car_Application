import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widget/right_headingtext.dart';

class InteriorHeadingtext extends StatelessWidget {
  const InteriorHeadingtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: RightHeadingText(
        heading: 'Interior & Comfort',
        subheading: 'Cooling to 21°C',
      ),
    );
  }
}

