import 'package:flutter/material.dart';
import 'package:students_app/utils/color_constants.dart';
import 'package:students_app/utils/image_constatns.dart';

List categoriesDataList = [
  [ColorConstant.mintyGreen, 'Fruits'],
  [ColorConstant.dullYellow, 'Numbers'],
  [ColorConstant.salmonPink, 'Vegetables'],
  [ColorConstant.opal, 'Colours'],
  [ColorConstant.mintyGreen, 'vehicles'],
  [ColorConstant.dullYellow, 'Alphabeets'],
  [ColorConstant.salmonPink, 'Trees'],
  [ColorConstant.opal, 'Places'],
];

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mochiy Pop  P One
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async {},
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(ImageConstants.img_category_bg),
              ),
            ),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Container(
                padding: const EdgeInsets.only(top: 70, left: 15, right: 15),
                child: Column(children: [
                  SizedBox(
                    height: 45,
                    child: TextField(
                      cursorColor: ColorConstant.mainBlack,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(0),
                        isDense: true,
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search',
                        filled: true,
                        fillColor: ColorConstant.grey15,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ListView.separated(
                      padding: EdgeInsets.only(bottom: 20),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                            padding: const EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              color: categoriesDataList[index][0],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  categoriesDataList[index][1],
                                  style: TextStyle(
                                      fontFamily: 'Mochiy Pop  P One',
                                      fontSize: 26,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConstant.mainWhite),
                                ),
                                Image.asset(
                                  ImageConstants.img_fruits_category,
                                  scale: 6.5,
                                )
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 15,
                          ),
                      itemCount: categoriesDataList.length)
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
