import 'package:flutter/material.dart';

class InteriorImage extends StatelessWidget {
  const InteriorImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Image.asset('assets/images/iterior.png'),
    );
  }
}
