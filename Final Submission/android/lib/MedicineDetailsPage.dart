import 'package:flutter/material.dart';

class MedicineDetailsPage extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final String imagePath;

  MedicineDetailsPage({required this.name, required this.description, required this.price, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(imagePath, height: 200),
            SizedBox(height: 16),
            Text(
              'Description:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Price: $price TK',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
