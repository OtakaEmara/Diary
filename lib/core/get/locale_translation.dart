import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleTranslation extends GetxController{
  void changeLocaleTranslation(String lang){
    Locale localeTranslation = Locale(lang);

    Get.updateLocale(localeTranslation);
  }
}