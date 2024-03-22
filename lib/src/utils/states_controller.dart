import 'package:flutter/widgets.dart';

enum BaconState {
  focused,
  hovered,
  pressed,
  disabled,
}

class BaconStatesController extends ValueNotifier<Set<BaconState>> {
  BaconStatesController([Set<BaconState>? value])
      : super(<BaconState>{...?value});

  /// Adds [state] to [value] if [add] is true, and removes it otherwise,
  /// and notifies listeners if [value] has changed.
  void update(BaconState state, bool add) {
    final valueChanged = add ? value.add(state) : value.remove(state);
    if (valueChanged) {
      notifyListeners();
    }
  }
}
