import 'package:flutter/material.dart';
import 'package:test_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPage();
}

class _RootPage extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kategorije namještaja"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange.shade800,
      ),
      body: const HomePage(),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.grey.shade300,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.chrome_reader_mode_outlined), label: "Katalog"),
          NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined), label: "Košarica"),
          NavigationDestination(
              icon: Icon(Icons.local_shipping_outlined), label: "Dostava"),
          NavigationDestination(
              icon: Icon(Icons.person_outline), label: "Profil"),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
