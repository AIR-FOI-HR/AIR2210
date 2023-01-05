// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:test_app/categories/categoryWardrobe.dart';
import 'package:test_app/categories/categoryArmchair.dart';
import 'package:test_app/categories/categoryChair.dart';
import 'package:test_app/categories/categorySofa.dart';
import 'package:test_app/categories/categoryBathroom.dart';
import 'package:test_app/categories/categoryBench.dart';
import 'package:test_app/categories/categoryBed.dart';
import 'package:test_app/categories/categoryDoor.dart';
import 'package:test_app/categories/categoryMirror.dart';
import 'package:test_app/categories/categoryRack.dart';
import 'package:test_app/categories/categoryTable.dart';
import 'package:test_app/categories/categoryWindow.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategorije namještaja"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange.shade800,
      ),
      backgroundColor: Colors.brown.shade100,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryTable()),
                          );
                        },
                        child: Image.asset(
                          'images/stol.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryChair()),
                          );
                        },
                        child: Image.asset(
                          'images/stolica.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryBed()),
                          );
                        },
                        child: Image.asset(
                          'images/bed.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 50,
                    width: 125,
                    child: Text("Stol", textAlign: TextAlign.center),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 125,
                  child: Text("Stolica", textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 50,
                  width: 125,
                  child: Text("Krevet", textAlign: TextAlign.center),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategorySofa()),
                          );
                        },
                        child: Image.asset(
                          'images/sofa.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryRack()),
                          );
                        },
                        child: Image.asset(
                          'images/regal.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryDoor()),
                          );
                        },
                        child: Image.asset(
                          'images/vrata.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 50,
                    width: 125,
                    child: Text("Sofa", textAlign: TextAlign.center),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 125,
                  child: Text("Regal", textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 50,
                  width: 125,
                  child: Text("Vrata", textAlign: TextAlign.center),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryWindow()),
                          );
                        },
                        child: Image.asset(
                          'images/prozor.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryMirror()),
                          );
                        },
                        child: Image.asset(
                          'images/ogledalo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryWardrobe()),
                          );
                        },
                        child: Image.asset(
                          'images/ormar.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 50,
                    width: 125,
                    child: Text("Prozor", textAlign: TextAlign.center),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 125,
                  child: Text("Ogledalo", textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 50,
                  width: 125,
                  child: Text("Ormar", textAlign: TextAlign.center),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryBathroom()),
                          );
                        },
                        child: Image.asset(
                          'images/kupaona.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CategoryBench()),
                          );
                        },
                        child: Image.asset(
                          'images/klupa.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.brown.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CategoryArmachair()),
                          );
                        },
                        child: Image.asset(
                          'images/fotelja.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: SizedBox(
                    height: 50,
                    width: 125,
                    child: Text("Kupaona", textAlign: TextAlign.center),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 125,
                  child: Text("Klupa", textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 50,
                  width: 125,
                  child: Text("Fotelja", textAlign: TextAlign.center),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
