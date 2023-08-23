// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'math_page.dart';
import 'science_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ly Study',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 75, 71, 82)),
        useMaterial3: true,
      ),
      home: const ShoppingHomePage(title: 'Ly Study'),
    );
  }
}

class ShoppingHomePage extends StatefulWidget {
  const ShoppingHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ShoppingHomePage> createState() => _ShoppingHomePageState();
}

class _ShoppingHomePageState extends State<ShoppingHomePage> {
  int _currentIndex = 0; // Index for bottom navigation bar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 0, 0),
        elevation: 0,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 92, 190, 188),
              Colors.purple[400]!,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to Ly Study :D',
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                Navigator.push(
                     context,
      MaterialPageRoute(builder: (context) => MathPage()), // Ganti dengan halaman yang sesuai
    );
  },
  child: const Text('Math', style: TextStyle(color: Color.fromARGB(255, 45, 43, 43))),
),

              const SizedBox(height: 20),
              ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SciencePage()), // Ganti dengan halaman yang sesuai
    );
  },
  child: const Text('Science', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Cart Summary'),
                content: const Text('You have items in your cart.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close'),
                  ),
                ],
              );
            },
          );
        },
        tooltip: 'Open Cart',
        child: const Icon(Icons.shopping_cart),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: const Color.fromARGB(0, 0, 115, 255),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
