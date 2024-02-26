import 'package:car_application/model/interior/time_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../controller/switch_controller.dart';

class TemperatureSchedule extends StatelessWidget {
  const TemperatureSchedule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        shrinkWrap: true,
        children: [
          TimeCard(
            days: 'M W F',
            time: '00:00 to 08:00',
            switchStateProvider: val1Provider,
            toggle: toggleVal1,
          ),
          const Gap(20),
          TimeCard(
            days: 'Tu Th Sat',
            time: '22:00 to 09:00',
            switchStateProvider: val2Provider,
            toggle: toggleVal2,
          ),
          const Gap(20),
          TimeCard(
            days: 'W F Sun',
            time: '23:00 to 06:00',
            switchStateProvider: val3Provider,
            toggle: toggleVal3,
          ),
        ],
      ),
    );
  }
}
