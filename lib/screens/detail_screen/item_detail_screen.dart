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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<ItemProvider>(
          builder: (context, snapshot, child) => ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
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
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: snapshot.itemData[snapshot.selectedItemIndex].bgColor,
                  image: DecorationImage(
                    image: NetworkImage(
                      snapshot.itemData.first.imageUrl,
                    ),
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    snapshot.itemData[snapshot.selectedItemIndex].title,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color:
                          snapshot.itemData[snapshot.selectedItemIndex].bgColor,
                      fontFamily: 'Mochiy Pop  P One',
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    snapshot.itemData[snapshot.selectedItemIndex].description,
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
                      snapshot
                          .setSelectedItemId(snapshot.selectedItemIndex - 1);
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
                          snapshot.itemData.length - 1) {
                        return;
                      }
                      snapshot
                          .setSelectedItemId(snapshot.selectedItemIndex + 1);
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
                  itemCount: snapshot.itemData.length,
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
                            color: snapshot.itemData[index].bgColor,
                          ),
                          child: Image.network(
                            snapshot.itemData[index].imageUrl,
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
      ),
    );
  }
}
