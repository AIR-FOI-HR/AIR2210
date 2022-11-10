// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('images/stol.jpg'),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/stolica.jpg'),
                    ),
                  ),
                  flex: 1),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/bed.jpg'),
                    ),
                  ),
                  flex: 1),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/sofa.jpg'),
                    ),
                  ),
                  flex: 1),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/regal.jpg'),
                    ),
                  ),
                  flex: 1),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/vrata.jpg'),
                    ),
                  ),
                  flex: 1),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/prozor.jpg'),
                    ),
                  ),
                  flex: 1),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/ogledalo.jpg'),
                    ),
                  ),
                  flex: 1),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/ormar.jpg'),
                    ),
                  ),
                  flex: 1),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/kupaona.jpg'),
                    ),
                  ),
                  flex: 1),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/fotelja.jpg'),
                    ),
                  ),
                  flex: 1),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('images/klupa.jpg'),
                    ),
                  ),
                  flex: 1),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                child: Text("Fotelja"),
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
            ],
          ),
        ],
      )),
    );
  }
}
