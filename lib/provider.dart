import 'package:flutter/material.dart';

class Dropdownservice extends ChangeNotifier {
  var resultlist = [
    'A+ / A',
    'A-',
    'B+',
    'B',
    'B-',
    'C+',
    'C',
    'C-',
    'D+',
    'D',
    'E'
  ];
  var selectedresult;

  setresultvalue(value) {
    selectedresult = value;
    notifyListeners();
  }
}
