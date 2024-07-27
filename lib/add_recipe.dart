import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:new_pro/profile.dart';

class AddRecipePage extends StatelessWidget {
  const AddRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController(); // Controller for recipe name
    final TextEditingController chefController = TextEditingController(); // Controller for chef name
    final TextEditingController prepTimeController = TextEditingController(); // Controller for preparation time
    final TextEditingController descriptionController = TextEditingController(); // Controller for description

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe'),
        backgroundColor: Colors.orange, // Set app bar background color
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recipe Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            TextFormField(
              controller: nameController, // Set controller
              decoration: const InputDecoration(
                labelText: 'Enter recipe name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Chef Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            TextFormField(
              controller: chefController, // Set controller
              decoration: const InputDecoration(
                labelText: 'Enter chef name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Preparation Time',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            TextFormField(
              controller: prepTimeController, // Set controller
              decoration: const InputDecoration(
                labelText: 'Enter preparation time',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Description',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            TextFormField(
              controller: descriptionController, // Set controller
              decoration: const InputDecoration(
                labelText: 'Enter description',
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
              maxLines: null,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Get values from text controllers
                String name = nameController.text;
                String chef = chefController.text;
                String prepTime = prepTimeController.text;
                String description = descriptionController.text;

                // Validate data (optional)
                if (name.isEmpty || chef.isEmpty || prepTime.isEmpty || description.isEmpty) {
                  // Handle empty fields
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Please fill all fields')));
                  return;
                }

                try {
                  // Upload recipe data to Firestore
                  await FirebaseFirestore.instance.collection('recipes').add({
                    'name': name,
                    'chef': chef,
                    'prepTime': prepTime,
                    'description': description,
                  });

                  // Show success message
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Recipe added successfully')));

                  // Clear text fields
                  nameController.clear();
                  chefController.clear();
                  prepTimeController.clear();
                  descriptionController.clear();
                } catch (e) {
                  // Handle errors
                  print('Error uploading recipe: $e');
                  // Show error message
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed to add recipe. Please try again later.')));
                }
              },
              child: const Text(
                'Add Recipe',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Set button background color
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Set button padding
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Profile page widget
class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('This is the Profile Page'),
      ),
    );
  }
}
