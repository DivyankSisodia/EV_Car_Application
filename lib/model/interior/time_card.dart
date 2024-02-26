import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeCard extends ConsumerWidget {
  final String days;
  final String time;
  final StateProvider<bool> switchStateProvider;
  final void Function(StateController<bool>) toggle;

  const TimeCard({
    super.key,
    required this.days,
    required this.time,
    required this.switchStateProvider,
    required this.toggle,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final switchState = ref.watch(switchStateProvider);
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 28.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'M W F',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '00:00 to 08:00',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          CupertinoSwitch(
            value: switchState,
            onChanged: (_) => toggle(ref.read(switchStateProvider.notifier)),
          ),
        ],
      ),
    );
  }
}
