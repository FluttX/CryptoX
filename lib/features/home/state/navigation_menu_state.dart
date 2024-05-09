import 'package:flutter/cupertino.dart';

ValueNotifier<int> currentNavIndex = ValueNotifier(2);

class NavigationMenuState {
  static void onChangeNavMenu(int index) {
    currentNavIndex.value = index;
  }
}
