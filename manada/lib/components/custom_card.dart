import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Color color;

  const CustomCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: color,
        height: 150,
        child: Stack(
          children: [
            // Positioned.fill(
            //   child: Image.network(
            //     imageUrl,
            //     fit: BoxFit.cover,
            //     color: Colors.black.withOpacity(0.25),
            //     colorBlendMode: BlendMode.darken,
            //   ),
            // ),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
