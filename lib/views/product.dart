import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductView extends StatelessWidget {
  const ProductView(this.text, this.name, {super.key});

  final String text;
  final String name;

  @override
  Widget build(BuildContext context) {
    DocumentReference docRef = FirebaseFirestore.instance.doc(text);

    return Scaffold(
        appBar: AppBar(
          title: Text(name),
          foregroundColor: Colors.white,
          backgroundColor: Colors.orange.shade800,
        ),
        backgroundColor: Colors.brown.shade100,
        body: FutureBuilder(
            future: docRef.get(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var data = snapshot.data;
                return Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(data!['image'])),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            data['name'],
                            style: const TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: RatingBar.builder(
                          initialRating: data['rating'].toDouble(),
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
                            data['price'],
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ]);
              } else {
                // Collection data not yet available, show a loading indicator
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
