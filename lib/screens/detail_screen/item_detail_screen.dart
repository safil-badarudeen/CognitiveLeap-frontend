import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:students_app/screens/detail_screen/providers/item_detail_provider.dart';

class ItemDetailScreen extends StatefulWidget {
  const ItemDetailScreen({Key? key}) : super(key: key);

  @override
  State<ItemDetailScreen> createState() => _ItemDetailScreenState();
}

class _ItemDetailScreenState extends State<ItemDetailScreen> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<ItemProvider>(context, listen: false).getAllCategoryData();
    });
    super.initState();
  }

  Color generateRandomColorFromList(List<Color> colorList) {
    Random random = Random();
    int index = random.nextInt(colorList.length);
    return colorList[index];
  }

  List<Color> colors = [
    Colors.red.withOpacity(0.5),
    Colors.green.withOpacity(0.5),
    Colors.blue.withOpacity(0.5),
    Colors.yellow.withOpacity(0.5),
    Colors.orange.withOpacity(0.5),
    Colors.purple.withOpacity(0.5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ItemProvider>(
        builder: (context, snapshot, child) => ListView(
          scrollDirection: Axis.vertical,
          padding:
              const EdgeInsets.only(top: 50, bottom: 15, left: 15, right: 15),
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.arrow_back_ios),
                    Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            snapshot.isGetAllCategoryDataLoading
                ? const Center(child: CircularProgressIndicator())
                : Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: generateRandomColorFromList(colors),
                      image: DecorationImage(
                        image: NetworkImage(
                          snapshot.itemDetailModel[snapshot.selectedItemIndex]
                              .image,
                        ),
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
            const SizedBox(height: 20),
            snapshot.isGetAllCategoryDataLoading
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        snapshot
                            .itemDetailModel[snapshot.selectedItemIndex].text,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: generateRandomColorFromList(colors),
                          fontFamily: 'Mochiy Pop  P One',
                        ),
                      ),
                      const SizedBox(height: 30),
                      Text(
                        snapshot.itemDetailModel[snapshot.selectedItemIndex]
                            .storyText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Mochiy Pop  P One',
                        ),
                      ),
                    ],
                  ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if (snapshot.selectedItemIndex == 0) {
                      return;
                    }
                    snapshot.setSelectedItemId(snapshot.selectedItemIndex - 1);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.arrow_back_ios),
                        Text(
                          'Previous',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (snapshot.selectedItemIndex ==
                        snapshot.itemDetailModel.length - 1) {
                      return;
                    }
                    snapshot.setSelectedItemId(snapshot.selectedItemIndex + 1);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 100,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: snapshot.itemDetailModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      snapshot.setSelectedItemId(index);
                    },
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: generateRandomColorFromList(colors),
                        ),
                        child: Image.network(
                          snapshot.itemDetailModel[index].image,
                          height: 80,
                          width: 80,
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
