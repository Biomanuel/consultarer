import 'package:consultarer/app/app_setup.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app_setup.router.dart';
class OrgSignUpViewModel extends IndexTrackingViewModel{
  final navigation = locator<NavigationService>();
  final form = GlobalKey<FormState>();
  bool isVisible = true;
  // bool isSwitch = false;
  String categoryValue = 'Categories';
  String subCategoryValue = 'Subcategories' ;
  String countryValue = 'Country';
  String languageValue ='English';

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
  validateDetailsField(value){
    if(value.isEmpty){
      return 'This field is required';
    }
    else
    {
      return null;
    }
  }
  void switchToPage1() {
    setIndex(0);
  }
  void switchToPage2() {
    if(currentIndex==2){
      navigation.navigateTo(Routes.workPlaceScreen);
    }
    else{
      setIndex(1);
    }
  }


  bool previousPage(context) {
    if (currentIndex == 0){
      Navigator.pop(context);
    };
    if (currentIndex > 0) setIndex(currentIndex - 1);
    return false;
  }
  toggleVisibility() {
    isVisible = !isVisible;
    notifyListeners();
  }
  createAccount(){
    if(form.currentState!.validate()){
      form.currentState!.save();
      navigation.navigateTo(Routes.orgSignUpScreen);
    }
  }
  skipAuth(){
    navigation.navigateTo(Routes.workPlaceScreen);
  }
}