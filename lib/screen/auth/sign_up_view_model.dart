import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
class SignUpViewModel extends IndexTrackingViewModel {
  String education = 'High School';
  bool isVisible = true;
  List<String> educationLevel = [
    'High School',
    'College Degree',
    'Undergraduate',
    'Masters',
    'Ph.D',
    'Professor',
  ];

  List<String> categories = [
    'Categories',
  ];
  List<String> country = [
    'Country',
  ];
  List<String> state = [
    'State/Province',
  ];
  List<String> employment = [
    'State/Province',
  ];
  List<String> startYear = [
    '2002',
  ];List<String> expertise = [
    'Expertise',
  ];

  // String
  toggleVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }

  setEducationLevel(value) {
    education = value;
    notifyListeners();
  }

  void switchToPage2() {
    setIndex(1);
  }

  bool previousPage(context) {
    if (currentIndex == 0){
      Navigator.pop(context);
    };
    if (currentIndex > 0) setIndex(currentIndex - 1);
    return false;
  }

  void switchToPage3() {
    setIndex(2);
  }
}
