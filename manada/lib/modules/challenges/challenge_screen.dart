import 'package:flutter/material.dart';

import '../../components/custom_card.dart';

class ChallengesPage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      "title": "Training Plan",
      "imageUrl": "https://example.com/training.jpg",
      "color": "0xFF2196F3",
    },
    {
      "title": "Meal Plan",
      "imageUrl": "https://example.com/meal.jpg",
      "color": "0xFFE91E63",
    },
    {
      "title": "Supplement Plan",
      "imageUrl": "https://example.com/supplement.jpg",
      "color": "0xFF212121",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: TextField(
          decoration: InputDecoration(
          hintText: 'Buscar desafios',
          hintStyle: TextStyle(color: const Color.fromARGB(255, 224, 224, 224)),
          border: InputBorder.none,
            ),
            style: TextStyle(color: Colors.white),
          ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return CustomCard(
            title: item["title"]!,
            imageUrl: item["imageUrl"]!,
            color: Color(int.parse(item["color"]!)),
          );
        },
      ),
    );
  }
}
