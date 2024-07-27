 import 'package:flutter/material.dart';
import 'package:new_pro/food_recipe.dart';
// import 'package:new_pro/food_recipe.dart';
// import 'package:new_pro/recipe_detail_screen.dart';

class RecipeCard extends StatelessWidget {

  final String name;
  final String imageUrl;
  // final String prepTime;
  // final String description;
  final VoidCallback onTap;

  const RecipeCard({
    required this.name,
    required this.imageUrl,
    // required this.prepTime,
    // required this.description,
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
        subtitle:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // children: [
          //   SizedBox(height: 8.0),
          //   Text(
          //     'Preparation Time: $prepTime',
          //     style: TextStyle(fontSize: 16.0),
          //   ),
          //   SizedBox(height: 4.0),
          //   Text(
          //     'Description: $description',
          //     style: TextStyle(fontSize: 16.0),
          //   ),
          // ],
        ),
       onTap: () {
  Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => FoodRecipe(
  imageUrl: imageUrl,
  recipeTitle: 'Chicken Alfredo Pasta',
  recipeDescription: '''
  Indulge in this rich and creamy chicken Alfredo pasta, where tender chicken pieces are smothered in a velvety sauce and served over perfectly cooked pasta. A comforting and satisfying dish for any occasion.
  Chief Name: Chef Maria Rodriguez
  Preparation Time: 15 minutes
  Tips and Variations:
  - For a lighter option, substitute heavy cream with half-and-half or milk for a lighter sauce.
  - Add a splash of white wine to the sauce for extra depth of flavor.
  - Customize the recipe by adding your favorite vegetables such as broccoli, spinach, or sun-dried tomatoes.
  - For a gluten-free version, use gluten-free pasta or zucchini noodles.
  - Garnish with freshly grated Parmesan cheese and chopped parsley for a finishing touch.
  '''
),

  ),
);

},


      ),
    );
  }
}