import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String imageUrl;

  final VoidCallback onTap;

  const CategoryCard({
    required this.name,
    required this.imageUrl,

    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      elevation: 4.0,
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: Image.asset(
          imageUrl,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // children: [
          //   SizedBox(height: 8.0),
          //   Text(
          //     // 'Preparation Time: $prepTime',
          //     // style: TextStyle(fontSize: 16.0),
          //   ),
          //   SizedBox(height: 4.0),
          //   Text(
          //     // 'Description: $description',
          //     // style: TextStyle(fontSize: 16.0),
          //   ),
          // ],
        ),
        onTap: onTap,
      ),
    );
  }
}