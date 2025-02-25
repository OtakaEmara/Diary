import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppbarSearchFormating extends StatelessWidget {
  HomeAppbarSearchFormating({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (){
          Get.defaultDialog(
              title: 'search'.tr,
              content: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'title'.tr
                ),
                onChanged: (value) {
                  searchController.text = value;
                },
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancel'.tr)
                ),
                TextButton(
                    onPressed: () {

                    },
                    child: Text('search'.tr)
                ),
              ]
          );
        },
        icon: Icon(Icons.search)
    );
  }
}
