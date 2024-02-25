import 'package:flutter/material.dart';

class DHomeImage extends StatelessWidget {
  const DHomeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/front_view.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: SizedBox(
              height: 60,
              width: 60,
              child: Image.asset(
                'assets/images/small_image.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
