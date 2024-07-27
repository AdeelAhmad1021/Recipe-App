import 'package:flutter/material.dart';
import 'package:new_pro/recipe_card.dart'; // Import the RecipeCard widget
// import 'package:new_pro/food_recipe.dart'; 

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecipeCard(
                name: 'Margherita Pizza',
                imageUrl: 'assets/images/tikka.jpg',
                onTap: () {
                  // Navigate to FoodRecipe passing the selected recipe
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => FoodRecipe(recipe: Recipe(
                  //     name: 'Margherita Pizza',
                  //     imageUrl: 'assets/images/tikka.jpg',
                  //     description: 'Classic Margherita Pizza with tomato sauce, mozzarella cheese, and fresh basil leaves.',
                  //   ))),
                  // );
                },
              ),
              SizedBox(height: 20.0),
              RecipeCard(
                name: 'Classic Beef Burger',
                imageUrl: 'assets/images/burger.jpg',
                onTap: () {
                  // Navigate to FoodRecipe passing the selected recipe
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => FoodRecipe(recipe: Recipe(
                  //     name: 'Classic Beef Burger',
                  //     imageUrl: 'assets/images/burger.jpg',
                  //     description: 'Juicy beef patty topped with lettuce, tomato, onion, and cheese, served on a toasted bun.',
                  //   ))),
                  // );
                },
              ),
              SizedBox(height: 20.0),
              RecipeCard(
                name: 'Chicken Alfredo Pasta',
                imageUrl: 'assets/images/chiken.jpg',
                onTap: () {
                  // Navigate to FoodRecipe passing the selected recipe
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => FoodRecipe(recipe: Recipe(
                  //     name: 'Chicken Alfredo Pasta',
                  //     imageUrl: 'assets/images/chiken.jpg',
                  //     description: 'Creamy Alfredo sauce with grilled chicken served over freshly cooked pasta.',
                  //   ))),
                  // );
                },
              ),
              SizedBox(height: 20.0),
              RecipeCard(
                name: 'Vegetable Stir-Fry',
                imageUrl: 'assets/images/biryani.jpg',
                onTap: () {
                  // Navigate to FoodRecipe passing the selected recipe
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => FoodRecipe(recipe: Recipe(
                  //     name: 'Vegetable Stir-Fry',
                  //     imageUrl: 'assets/images/biryani.jpg',
                  //     description: 'Colorful assortment of fresh vegetables stir-fried to perfection in a savory sauce.',
                  //   ))),
                  // );
                },
              ),
              SizedBox(height: 20.0),
              RecipeCard(
                name: 'Chocolate Chip Cookies',
                imageUrl: 'assets/images/egg.jpg',
                onTap: () {
                  // Navigate to FoodRecipe passing the selected recipe
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => FoodRecipe(recipe: Recipe(
                  //     name: 'Chocolate Chip Cookies',
                  //     imageUrl: 'assets/images/egg.jpg',
                  //     description: 'Soft and chewy cookies packed with chocolate chips, perfect for dessert or a snack.',
                  //   ))),
                  // );
                },
              ),
              SizedBox(height: 20.0),
              RecipeCard(
                name: 'Fruit Smoothie Bowl',
                imageUrl: 'assets/images/msale.jpg',
                onTap: () {
                  // Navigate to FoodRecipe passing the selected recipe
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => FoodRecipe(recipe: Recipe(
                  //     name: 'Fruit Smoothie Bowl',
                  //     imageUrl: 'assets/images/msale.jpg',
                  //     description: 'Refreshing smoothie made with blended fruits and topped with granola, nuts, and fresh fruit slices.',
                  //   )
                  //   )
                  //   ),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:new_pro/recipe_card.dart'; // Import the RecipeCard widget
// import 'package:new_pro/food_recipe.dart';

// class RecipePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//         return Scaffold(
//       appBar: AppBar(
//         title: Text('Recipes'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           color: Colors.white,
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               RecipeCard(
//                 name: 'Margherita Pizza',
//                 imageUrl: 'assets/images/tikka.jpg',

//                 onTap: () {
//                 // Navigate to RecipeDetailScreen passing the selected recipe
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => FoodRecipe()),
//                 );
//               },
//               ),
//               SizedBox(height: 20.0),
//               RecipeCard(
//                 name: 'Classic Beef Burger',
//                 imageUrl: 'assets/images/burger.jpg',

//                 onTap: () {
//                 // Navigate to RecipeDetailScreen passing the selected recipe
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => FoodRecipe()),
//                 );
//               },
//               ),
//               SizedBox(height: 20.0),
//               RecipeCard(
//                 name: 'Chicken Alfredo Pasta',
//                 imageUrl: 'assets/images/chiken.jpg',
//                               onTap: () {
//                 // Navigate to RecipeDetailScreen passing the selected recipe
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => FoodRecipe()),
//                 );
//               },
//               ),
//               SizedBox(height: 20.0),
//               RecipeCard(
//                 name: 'Vegetable Stir-Fry',
//                 imageUrl: 'assets/images/biryani.jpg',
//                                onTap: () {
//                 // Navigate to RecipeDetailScreen passing the selected recipe
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => FoodRecipe()),
//                 );
//               },
//               ),
//               SizedBox(height: 20.0),
//               RecipeCard(
//                 name: 'Chocolate Chip Cookies',
//                 imageUrl: 'assets/images/egg.jpg',
//                 onTap: () {
//                 // Navigate to RecipeDetailScreen passing the selected recipe
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => FoodRecipe()),
//                 );
//               },
//               ),
//               SizedBox(height: 20.0),
//               RecipeCard(
//                 name: 'Fruit Smoothie Bowl',
//                 imageUrl: 'assets/images/msale.jpg',
//                 onTap: () {
//                 // Navigate to RecipeDetailScreen passing the selected recipe
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => FoodRecipe()),
//                 );
//               },
//               ),
//             ],
//           ),
//         ),
//       ),
//       // body: SingleChildScrollView(
//       //   padding: EdgeInsets.all(20.0),
//       //   child: Column(
//       //     crossAxisAlignment: CrossAxisAlignment.start,
//       //     children: recipes.map((recipe) {
//       //       return GestureDetector(
//       //         onTap: () {
//       //           // Navigate to RecipeDetailScreen passing the selected recipe
//       //           Navigator.push(
//       //             context,
//       //             MaterialPageRoute(builder: (context) => RecipePage(recipe: recipe)),
//       //           );
//       //         },
//       //         child: RecipeCard(
//       //           recipe: recipe,
//       //         ),
//       //       );
//       //     }).toList(),
//       //   ),
//       // ),
//     );
//   }
// }
