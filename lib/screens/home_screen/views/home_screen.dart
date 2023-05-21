import 'package:flutter/material.dart';
import 'package:students_app/screens/detail_screen/item_detail_screen.dart';
import 'package:students_app/screens/home_screen/views/widgets/categories_item_card.dart';
import 'package:students_app/utils/color_constants.dart';
import 'package:students_app/utils/image_constatns.dart';
import 'package:students_app/widgets/custom_search_field.dart';

List categoriescolorPalette = [
  ColorConstant.mintyGreen,
  ColorConstant.dullYellow,
  ColorConstant.salmonPink,
  ColorConstant.opal,
];

List categoriesDataList = [
  'Fruits',
  'Numbers',
  'Vegetables',
  'Colours',
  'vehicles',
  'Alphabeets',
  'Trees',
  'Places',
];

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mochiy Pop  P One
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                  const SizedBox(
                    height: 45,
                    child: CustomSearchField(),
                  ),
                  const SizedBox(height: 30),
                  ListView.separated(
                      padding: const EdgeInsets.only(bottom: 20),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ItemDetailScreen(),
                              ),
                            );
                          },
                          child: CategoriesItemCard(index: index)),
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
