import 'package:flutter/material.dart';

class LocationImages extends StatelessWidget {
  const LocationImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Image.asset(
            'assets/images/map_image.png',
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 1,
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.02,
          right: MediaQuery.of(context).size.width * 0.09,
          child: Image.asset(
            'assets/images/small_map_asset_image.png',
          ),
        ),
      ],
    );
  }
}
