import 'package:diary/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultTextFormField extends StatelessWidget {

  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;
  final bool? expands;
  final InputDecoration? decoration;
  final Icon? icon;
  final String? hintText;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final Function(String)? onChanged;

  const DefaultTextFormField({super.key,
    required this.controller, this.keyboardType, this.minLines, this.maxLines,this.expands,this.decoration,
    required this.validator, this.onTap, this.onChanged, this.icon, this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      onChanged: onChanged,
      cursorColor: DefaultColors.mainBlueDark,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: decoration ?? InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: DefaultColors.grey,
                  width: 1
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: DefaultColors.mainBlueDark,
                  width: 2
              )
          ),
          prefixIcon: icon,
          hintText: hintText?.tr??'',
          hintStyle: TextStyle(color: DefaultColors.grey)
      ),
      validator: validator,
      minLines: minLines,
      maxLines: maxLines,
      expands: expands?? false,
      textAlignVertical: TextAlignVertical.top,
    );
  }
}
