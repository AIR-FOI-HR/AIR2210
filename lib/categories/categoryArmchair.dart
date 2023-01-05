import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Product {
  late String name;
  late String price;
  late String image;

  Product(name1, price1, image1) {
    name = name1;
    price = price1;
    image = image1;
  }
}

class CategoryArmachair extends StatelessWidget {
  const CategoryArmachair({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference products =
        FirebaseFirestore.instance.collection('armchairs');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Fotelje"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange.shade800,
      ),
      backgroundColor: Colors.brown.shade100,
      body: FutureBuilder(
        future: products.get(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Collection data available, store it in a list
            List<DocumentSnapshot> documents = snapshot.data!.docs;
            List data = documents.map((document) => {
                      "data": document.data(), 
                      "id": document.id
                    }).toList();
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(15),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(data[index]['data']['image'])),
                        ),
                      ),
                      Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  data[index]['data']['name'],
                                  style: const TextStyle(fontSize: 25),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: RatingBar.builder(
                                initialRating: data[index]['data']['rating'].toDouble(),
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 15,
                                itemPadding:
                                    const EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                            const SizedBox(height: 30),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  data[index]['data']['price'],
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                );
              },
            );
          } else {
            // Collection data not yet available, show a loading indicator
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
