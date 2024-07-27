import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Food Recipe is your ultimate cooking companion. '
              'With a vast collection of recipes ranging from simple '
              'snacks to exotic cuisines, we aim to inspire your '
              'culinary adventures. Happy cooking!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email, color: Colors.blue),
              title: Text(
                'info@foodrecipe.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Implement action when tapping on email
              },
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.blue),
              title: Text(
                '+1234567890',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Implement action when tapping on phone number
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blue),
              title: Text(
                '123 Main Street, City, Country',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Implement action when tapping on address
              },
            ),
          ],
        ),
      ),
    );
  }
}
