import 'package:flutter/material.dart';

class ItemProvider extends ChangeNotifier {
  int selectedItemId = 0;
  int selectedItemIndex = 0;
  void setSelectedItemId(int id, int index) {
    selectedItemId = id;
    selectedItemIndex = index;
    notifyListeners();
  }

  List<ItemData> itemData = [
    ItemData(
      id: 1,
      title: 'Apple',
      description:
          'Juicy, sweet, round fruit with smooth skin and crisp flesh.',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/013/442/160/original/red-apple-on-transparent-background-free-png.png',
      bgColor: const Color(0xffFF0000).withOpacity(0.5),
    ),
    ItemData(
      id: 2,
      title: 'Pinapple',
      description:
          'Tropical, spiky fruit with sweet, tangy flavor and juicy flesh',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/008/848/362/original/fresh-pineapple-free-png.png',
      bgColor: Colors.orangeAccent,
    ),
    ItemData(
      id: 3,
      title: 'Mango',
      description:
          'Tropical, juicy fruit with sweet, tangy flavor and vibrant color',
      imageUrl:
          'https://www.freepnglogos.com/uploads/mango-png/mango-png-image-purepng-transparent-png-image-25.png',
      bgColor: Colors.yellow,
    ),
    ItemData(
      id: 4,
      title: 'Apple',
      description:
          'Juicy, sweet, round fruit with smooth skin and crisp flesh.',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/013/442/160/original/red-apple-on-transparent-background-free-png.png',
      bgColor: const Color(0xffFF0000).withOpacity(0.5),
    ),
    ItemData(
      id: 5,
      title: 'Pinapple',
      description:
          'Tropical, spiky fruit with sweet, tangy flavor and juicy flesh',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/008/848/362/original/fresh-pineapple-free-png.png',
      bgColor: Colors.orangeAccent,
    ),
    ItemData(
      id: 6,
      title: 'Mango',
      description:
          'Tropical, juicy fruit with sweet, tangy flavor and vibrant color',
      imageUrl:
          'https://www.freepnglogos.com/uploads/mango-png/mango-png-image-purepng-transparent-png-image-25.png',
      bgColor: Colors.yellow,
    ),
  ];
}

class ItemData {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final Color bgColor;

  ItemData({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.bgColor,
  });
}
