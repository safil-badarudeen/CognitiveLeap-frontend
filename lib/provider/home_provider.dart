import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  // [selectedUserMode] = 0 => Teacher Mode
  // [selectedUserMode] = 1 => Student Mode

  /// This variable is used to store the selected user mode
  int selectedUserMode = 0;

  set setSelectedUserMode(int value) {
    selectedUserMode = value;
    notifyListeners();
  }

  get getSelectedUserMode => selectedUserMode;
}
