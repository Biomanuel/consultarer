import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
class SignUpViewModel extends IndexTrackingViewModel {
  bool isVisible = true;
  bool isSwitch = false;
  String education = 'High School';
  String categoryValue = 'Categories';
  String subCategoryValue = 'Subcategories' ;
  String countryValue = 'Country';
  String stateValue  = 'State/Province';
  String languageValue ='English';
  String startYearValue =  '2002';
  final List<String> educationLevel = [
    'High School',
    'College Degree',
    'Undergraduate',
    'Masters',
    'Ph.D',
    'Professor',
  ];
 final  List<String> categories = [
    'Categories',
    'Hello',
  ];
  final List<String> subCategories = [
    'Subcategories',
    'Heyy',
  ];
  final List<String> country = [
    'Country',
    'Nigeria',
    'Ghana',
  ];
  final List<String> language = [
    'English',
    'Yoruba',
    'Hausa',
  ];
 final List<String> state = [
    'State/Province',
    'Ondo'
  ];
  final List<String> employment = [
    'State/Province',
    'Ibadan',
    'Province',
  ];
  final List<String> startYear = [
    '2002',
    '2003',
    '2004',
    '2005',
  ];

  final List<String> expertise = [
    'Expertise',
    'Expertis',
    'Experti',
    'Expert',
  ];

toggleSwitch(value){
  isSwitch = value;
  notifyListeners();
}
  selectEducation(value){
    education = value;
    notifyListeners();
  }
onChangeDropDown({value, initialValue}){
  initialValue = value;
  notifyListeners();
}
selectYear(value){
    startYearValue = value;
    notifyListeners();
}
  selectCategory(value){
    categoryValue = value;
    notifyListeners();
  }
  selectSubCategory(value){
    subCategoryValue = value;
    notifyListeners();
  }
  selectCountry(value){
    countryValue = value;
    notifyListeners();
  }


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
