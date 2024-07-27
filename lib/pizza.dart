import 'package:flutter/material.dart';

class PizzaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset(
                'assets/pizza_image.jpg', // Replace with your pizza image asset
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Instructions:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Preheat oven to 425°F (220°C).',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '2. Roll out pizza dough on a floured surface to desired thickness.',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '3. Transfer dough to a pizza stone or baking sheet.',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '4. Spread pizza sauce over dough, leaving a small border around the edges.',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '5. Add desired toppings such as cheese, pepperoni, vegetables, etc.',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '6. Bake in preheated oven for 12-15 minutes or until crust is golden and cheese is melted and bubbly.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Enjoy your homemade pizza!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
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

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PizzaPage(),
  ));
}
