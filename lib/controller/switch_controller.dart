
import 'package:flutter_riverpod/flutter_riverpod.dart';

final val1Provider = StateProvider<bool>((ref) => false);

void toggleVal1(StateController<bool> state) {
  state.state = !state.state;
}

final val2Provider = StateProvider<bool>((ref) => false);

void toggleVal2(StateController<bool> state) {
  state.state = !state.state;
}

final val3Provider = StateProvider<bool>((ref) => false);

void toggleVal3(StateController<bool> state) {
  state.state = !state.state;
}