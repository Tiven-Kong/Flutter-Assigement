import 'package:flutter/material.dart';

// Enum to define different products with attributes
enum Product {
  dart,
  flutter,
  firebase;

  // Define attributes for each product
  String get title {
    switch (this) {
      case Product.dart:
        return "Dart";
      case Product.flutter:
        return "Flutter";
      case Product.firebase:
        return "Firebase";
    }
  }

  String get description {
    switch (this) {
      case Product.dart:
        return "The best Object Language";
      case Product.flutter:
        return "Build beautiful apps";
      case Product.firebase:
        return "Powerful backend services";
    }
  }

  String get image {
    switch (this) {
      case Product.dart:
        return 'assets/img/dart.png';
      case Product.flutter:
        return 'assets/img/flutter.png';
      case Product.firebase:
        return 'assets/img/firebase.png';
    }
  }
}

// Main function to run the app
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Ex2(Part2 & 3)'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          ProductCard(product: Product.dart),
          SizedBox(height: 10), // Spacing between cards
          ProductCard(product: Product.flutter),
          SizedBox(height: 10), // Spacing between cards
          ProductCard(product: Product.firebase),
        ],
      ),
    ),
  ));
}

// Stateless widget for the product card
class ProductCard extends StatelessWidget {
  final Product product; // The product object to display

  const ProductCard({Key? key, required this.product}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 500, // Set the width of the card
        height: 180,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                product.image,
                width: 100,
                height: 100,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      product.description,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
