import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppbarLangFormating extends StatelessWidget {
  const HomeAppbarLangFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (){
          Get.bottomSheet(
              BottomSheet(
                onClosing: () {},
                builder: (context) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height/7,
                    child: Column(
                      children: [
                        RadioListTile(
                            title: Text('arabic'.tr),
                            value: 'ar',
                            groupValue: '',
                            onChanged: (value) {}
                        ),
                        RadioListTile(
                          title: Text('english'.tr),
                          value: 'en',
                          groupValue: "",
                          onChanged: (value) {},
                        )
                      ],
                    ),
                  );
                },
              )
          );
        },
        icon: Icon(Icons.translate_outlined)
    );
  }
}
