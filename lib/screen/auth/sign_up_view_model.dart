import 'package:stacked/stacked.dart';

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
  List<String> currentEmployments = [
    'Current Employment',
  ];
  List<String> previousEmployments = [
    'Previous Employment',
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

  bool previousPage() {
    if (currentIndex == 0) return true;
    if (currentIndex > 0) setIndex(currentIndex - 1);
    return false;
  }

  void switchToPage3() {
    setIndex(2);
  }
}
