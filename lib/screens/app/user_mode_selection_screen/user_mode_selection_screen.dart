import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:students_app/provider/home_provider.dart';
import 'package:students_app/screens/app/category_list/category_list_screen.dart';

class UserModeSelectionSCreen extends StatefulWidget {
  const UserModeSelectionSCreen({super.key});

  @override
  State<UserModeSelectionSCreen> createState() =>
      _UserModeSelectionSCreenState();
}

class _UserModeSelectionSCreenState extends State<UserModeSelectionSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeProvider>(
        builder: (context, snapshot, child) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          child: Column(children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        snapshot.setSelectedUserMode = 0;
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0.0),
                        decoration: BoxDecoration(
                          color: snapshot.getSelectedUserMode == 0
                              ? Colors.teal.withOpacity(0.7)
                              : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          'https://cdn3d.iconscout.com/3d/premium/thumb/teacher-5266574-4403848.png?f=webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Teacher Mode',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            /// Horizontal divider
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              height: 1,
              width: double.infinity,
              color: Colors.black.withOpacity(0.1),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        snapshot.setSelectedUserMode = 1;
                      },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0.0),
                        decoration: BoxDecoration(
                          color: snapshot.getSelectedUserMode == 1
                              ? Colors.teal.withOpacity(0.7)
                              : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.network(
                          'https://cdn3d.iconscout.com/3d/premium/thumb/celebrities-5565614-4715115.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Student Mode',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const CategoriesScreen();
                        },
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  label: const Text('Continue',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Colors.white))),
            ),
          ]),
        ),
      ),
    );
  }
}
