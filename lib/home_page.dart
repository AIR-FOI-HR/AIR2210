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
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CategoryTable()),
                              );
                            },
                            child: Image.asset('images/stol.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  flex: 1,
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CategoryChair()),
                              );
                            },
                            child: Image.asset('images/stolica.jpg'),
                          ),
                        ),
                      ),
                    ),
                    flex: 1),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
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
                            child: Image.asset('images/bed.jpg'),
                          ),
                        ),
                      ),
                    ),
                    flex: 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Text(""),
                  flex: 1,
                ),
                Expanded(
                  child: Text("Stol"),
                  flex: 2,
                ),
                Expanded(
                  child: Text(""),
                  flex: 1,
                ),
                Expanded(
                  child: Text("Stolica"),
                  flex: 2,
                ),
                Expanded(
                  child: Text(""),
                  flex: 1,
                ),
                Expanded(
                  child: Text("Krevet"),
                  flex: 2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
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
                            child: Image.asset('images/sofa.jpg'),
                          ),
                        ),
                      ),
                    ),
                    flex: 1),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
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
                            child: Image.asset('images/regal.jpg'),
                          ),
                        ),
                      ),
                    ),
                    flex: 1),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
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
                            child: Image.asset('images/vrata.jpg'),
                          ),
                        ),
                      ),
                    ),
                    flex: 1),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Expanded(
                  child: Text(""),
                  flex: 1,
                ),
                Expanded(
                  child: Text("Sofa"),
                  flex: 2,
                ),
                Expanded(
                  child: Text(""),
                  flex: 1,
                ),
                Expanded(
                  child: Text("Regal"),
                  flex: 2,
                ),
                Expanded(
                  child: Text(""),
                  flex: 1,
                ),
                Expanded(
                  child: Text("Vrata"),
                  flex: 2,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CategoryWindow()),
                              );
                            },
                            child: Image.asset('images/prozor.jpg'),
                          ),
                        ),
                      ),
                    ),
                    flex: 1),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CategoryMirror()),
                              );
                            },
                            child: Image.asset('images/ogledalo.jpg'),
                          ),
                        ),
                      ),
                    ),
                    flex: 1),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CategoryWardrobe()),
                              );
                            },
                            child: Image.asset('images/ormar.jpg'),
                          ),
                        ),
                      ),
                    ),
                    flex: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Expanded(
                      child: Text(""),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text("Prozor"),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(""),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text("Ogledalo"),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(""),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text("Ormar"),
                      flex: 2,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CategoryBathroom()),
                                  );
                                },
                                child: Image.asset('images/kupaona.jpg'),
                              ),
                            ),
                          ),
                        ),
                        flex: 1),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CategoryBench()),
                                  );
                                },
                                child: Image.asset('images/klupa.jpg'),
                              ),
                            ),
                          ),
                        ),
                        flex: 1),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Card(
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
                                child: Image.asset('images/fotelja.jpg'),
                              ),
                            ),
                          ),
                        ),
                        flex: 1),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Expanded(
                      child: Text(""),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text("Kupaona"),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(""),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text("Klupa"),
                      flex: 2,
                    ),
                    Expanded(
                      child: Text(""),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text("Fotelja"),
                      flex: 2,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
