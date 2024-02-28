// ignore_for_file: file_names

import 'package:car_application/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../model/location/charger_location_btn.dart';
import '../model/location/location_heading.dart';
import '../model/location/location_images.dart';
import '../model/location/search_location.dart';

class LocationsAndMap extends StatelessWidget {
  const LocationsAndMap({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              LocationHeading(),

              LocationImages(),

              SearchField(),

              Gap(6),
              
              ChargerLocationButton(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 1),
    );
  }
}



