import 'package:flutter_riverpod/flutter_riverpod.dart';

final phoneKeyControllerProvider = StateNotifierProvider<PhoneKey, bool>(
  (ref) => PhoneKey(),
);

class PhoneKey extends StateNotifier<bool> {
  PhoneKey() : super(true);

  void enabledKey() {
    state = !state;
  }
}
