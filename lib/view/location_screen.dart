// ignore_for_file: file_names

import 'package:car_application/bottom_nav_bar.dart';
import 'package:car_application/widget/right_headingtext.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class LocationsAndMap extends StatelessWidget {
  const LocationsAndMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: RightHeadingText(
                  heading: 'Locations & Maps',
                  subheading: '900 Cool St, San Francisco, CA',
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10),
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
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
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
              ),
              const Gap(6),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 242, 242, 242),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black87,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.bolt_outlined,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      Text(
                        'Search for a charger',
                        style: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}
