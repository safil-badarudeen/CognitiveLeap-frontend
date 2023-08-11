import 'package:flutter/material.dart';
import 'package:students_app/utils/color_constants.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ColorClass.mainBlack,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0),
        isDense: true,
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search',
        filled: true,
        fillColor: ColorClass.grey15,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
