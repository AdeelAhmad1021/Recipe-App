import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class FoodRecipe extends StatelessWidget {
  final String imageUrl;
  final String recipeTitle;
  final String recipeDescription;

  FoodRecipe({
    required this.imageUrl,
    required this.recipeTitle,
    required this.recipeDescription,
  });

  Future<void> saveRecipeToDatabase() async {
    try {
      // Ensure Firebase is initialized
      await Firebase.initializeApp();

      DatabaseReference recipesRef = FirebaseDatabase.instance.reference().child('recipes');
      await recipesRef.push().set({
        'imageUrl': imageUrl,
        'recipeTitle': recipeTitle,
        'recipeDescription': recipeDescription,
      });
      print('Recipe saved successfully!');
    } catch (error) {
      // Handle errors
      print('Failed to save recipe: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.grey[200],
              ),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recipe Title',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    recipeTitle,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Recipe Description',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    recipeDescription,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      saveRecipeToDatabase();
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
