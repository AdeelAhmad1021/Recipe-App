import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:new_pro/RecipeDetailsPage.dart';
import 'package:new_pro/add_recipe.dart';
import 'package:new_pro/addfood.dart';
import 'package:new_pro/loginpage.dart';
import 'package:new_pro/setting.dart';
import 'package:new_pro/About_user.dart';
import 'package:new_pro/about.dart';
import 'package:new_pro/signup_page.dart';
import 'package:new_pro/profile.dart';
import 'package:new_pro/category_card.dart';
import 'package:new_pro/recipe_detail_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'RecipeListPage.dart';
import 'package:new_pro/ingrediant.dart'; // Corrected import statement

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDtK4uxMRmszQ8dv-lnWuUjZKlUf4nPqXw",
      authDomain: "recipe-app-9f1b9.firebaseapp.com",
      projectId: "recipe-app-9f1b9",
      storageBucket: "recipe-app-9f1b9.appspot.com",
      databaseURL: "https://recipe-app-9f1b9-default-rtdb.firebaseio.com",
      messagingSenderId: "391081481527",
      appId: "1:391081481527:web:b2b539d8b1d13b4fdbb6b2",
      measurementId: "G-SRZ4PG48P8",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/signup': (context) => SignupForm(),
        '/add_recipe': (context) => AddRecipePage(),
        '/profile': (context) => ProfilePage(),
        '/AboutUserPage': (context) => Category(),
        '/loginpage': (context) => LoginPage(),
        '/settings': (context) => SettingsPage(),
        '/about_user': (context) => AboutPage(),
        '/RecipeListPage2': (context) => RecipeListPage2(),
        '/ingredient': (context) => RecipeFormPage(navigateToNextPage: (String ) {  },), // Corrected route
      },
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      bottomNavigationBar: buildBottomNavigationBar(context),
      appBar: buildAppBar(context),
      drawer: buildDrawer(context),
      body: buildBody(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Text(
            'Food Recipe',
            style: TextStyle(color: Colors.black),
          ),
          Expanded(
            child: SizedBox(), // Placeholder for search widget
          ),
          IconButton(
            icon: const Icon(Icons.food_bank),
            onPressed: () {
              Navigator.pushNamed(context, '/ingredient'); // Corrected route
            },
          ),
        ],
      ),
      backgroundColor: Colors.orange,
      actions: [
        buildActionButton(context, 'Sign Up', '/signup', Colors.white, Colors.black),
        buildActionButton(context, 'Login', '/loginpage', Colors.black, Colors.white),
      ],
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.orange,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            accountName: Text(
              'Recipe App',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              'recipeapp@gmail.com',
              style: TextStyle(color: Colors.black),
            ),
          ),
          buildDrawerItem(context, Icons.settings, 'Settings', '/settings'),
          buildDrawerItem(context, Icons.info, 'About Us', '/profile'),
        ],
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('recipes').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            final recipes = snapshot.data?.docs ?? [];

            return ListView.builder(
              shrinkWrap: true, // Added to prevent unbounded height error
              physics: NeverScrollableScrollPhysics(), // Prevent ListView from scrolling independently
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                final recipe = recipes[index];
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Text(recipe['name']),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetailsPage2(recipeId: recipe.id),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  SalomonBottomBar buildBottomNavigationBar(BuildContext context) {
    return SalomonBottomBar(
      items: [
        SalomonBottomBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          title: Text('Home'),
          selectedColor: Colors.white,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.add_circle, color: Colors.black),
          title: Text('Add Recipe'),
          selectedColor: Colors.white,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.person, color: Colors.black),
          title: Text('AboutUserPage'),
          selectedColor: Colors.white,
        ),
      ],
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/add_recipe');
            break;
          case 2:
            Navigator.pushNamed(context, '/AboutUserPage');
            break;
        }
      },
    );
  }

  TextButton buildActionButton(
      BuildContext context, String text, String route, Color bgColor, Color textColor) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold, // Add bold font weight
        ),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 16.0),
        ), // Add padding
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return bgColor.withOpacity(0.5); // Change color when pressed
            }
            return bgColor; // Default color
          },
        ),
      ),
    );
  }

  ListTile buildDrawerItem(BuildContext context, IconData icon, String title, String route) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: TextStyle(color: Colors.white)),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}
