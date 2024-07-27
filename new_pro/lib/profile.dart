import 'package:flutter/material.dart';
import 'package:new_pro/recipe_detail_screen.dart'; // Ensure this import is correct
import 'package:new_pro/category_card.dart'; // Ensure this import is correct

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catogery', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              CategoryCard(
                name: 'Quick and Easy',
                imageUrl: 'assets/images/tikka.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipePage()),
                  );
                },
              ),
              SizedBox(height: 20.0),
              CategoryCard(
                name: 'Italian',
                imageUrl: 'assets/images/burger.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipePage()),
                  );
                },
              ),
              SizedBox(height: 20.0),
              CategoryCard(
                name: 'Asian',
                imageUrl: 'assets/images/burger.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipePage()),
                  );
                },
              ),
              SizedBox(height: 20.0),
              CategoryCard(
                name: 'Chinese',
                imageUrl: 'assets/images/biryani.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipePage()),
                  );
                },
              ),
              SizedBox(height: 20.0),
              CategoryCard(
                name: 'Baking',
                imageUrl: 'assets/images/biryani.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipePage()),
                  );
                },
              ),
              SizedBox(height: 20.0),
              CategoryCard(
                name: 'Sea Food',
                imageUrl: 'assets/images/msale.jpg',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
