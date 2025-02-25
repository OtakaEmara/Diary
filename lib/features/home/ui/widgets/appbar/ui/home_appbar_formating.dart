import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/home_appbar_lang_formating.dart';
import '../widgets/home_appbar_search_formating.dart';

class HomeAppbarFormating extends StatelessWidget {
  const HomeAppbarFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('diary'.tr),
      actions: [
        HomeAppbarSearchFormating(),
        HomeAppbarLangFormating(),
      ],
    );
  }
}
