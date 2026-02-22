import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _angka = 0;

  int get angka => _angka;

  void increment() {
    _angka++;
    notifyListeners();
  }
}

// notifyListeners(); berguna untuk memberi nontifikasi kesetiap widget yang sedang mendengarkan jika ada perubahan, dan singkatnya  masih membutuhkan import karena provider hanya digunakan untuk nontifylistener untuk menyampaikan ke masing masing widget