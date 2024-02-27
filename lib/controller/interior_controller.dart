import 'package:flutter_riverpod/flutter_riverpod.dart';

final interiorControllerProvider = StateNotifierProvider<InteriorController, bool>(
  (ref) => InteriorController(),
);

class InteriorController extends StateNotifier<bool> {
  InteriorController() : super(false);

  void changeInterior() {
    state = !state;
  }
}