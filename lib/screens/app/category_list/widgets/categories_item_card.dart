import 'package:flutter/material.dart';
import 'package:students_app/screens/app/category_list/category_list_screen.dart';
import 'package:students_app/utils/color_constants.dart';
import 'package:students_app/utils/image_constatns.dart';

class CategoriesItemCard extends StatelessWidget {
  const CategoriesItemCard({
    super.key,
    required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: categoriescolorPalette[index % categoriescolorPalette.length],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoriesDataList[index],
            style: TextStyle(
                fontFamily: 'Mochiy Pop  P One',
                fontSize: 26,
                fontWeight: FontWeight.w400,
                color: ColorConstant.mainWhite),
          ),
          Image.asset(
            ImageClass.img_fruits_category,
            scale: 6.5,
          )
        ],
      ),
    );
  }
}
