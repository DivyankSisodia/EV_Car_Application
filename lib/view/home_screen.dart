// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../data/item.dart';
import '../model/Home/dHeading_text.dart';
import '../model/Home/home_Battery_indicator.dart';
import '../model/Home/home_battery_status.dart';
import '../model/Home/home_image.dart';
import '../widget/card_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Item> items = [
    Item(
      name: 'Charging and\nBattery',
      imagePath: 'assets/images/charging.png',
      color: const Color(0xFFF1E9D4),
    ),
    Item(
      name: 'Interior and\nComfort',
      imagePath: 'assets/images/right_side.png',
      color: const Color(0xFFEAE9E5),
    ),
    Item(
      name: 'Safety & Security',
      imagePath: 'assets/images/top_view.png',
      color: const Color(0xFFD4F1D7),
    ),
    Item(
      name: 'Location and\nMaps',
      imagePath: 'assets/images/stearing.png',
      color: const Color(0xFFD4DCF1),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Home Page Heading text
              const DHomeHeading(),

              // Home Page Image
              const DHomeImage(),

              const Gap(8),
              // Battery Status
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: DHomeBatteryStatus(),
              ),

              // Battery Indicator
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: DBatteryIndicator(),
              ),

              const Gap(20),

              // Cards
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 6),
                child: SizedBox(
                  height: 350,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return CardContainer(item: items[index]);
                    },
                  ),
                ),
              ),
              const Gap(30),
            ],
          ),
        ),
      ),
    );
  }
}
