import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_image.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'User',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.email, color: Colors.blue),
              title: Text(
                'user@gmail.com',
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
                'NFC- Multan',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                // Implement action when tapping on location
              },
            ),
          ],
        ),
      ),
    );
  }
}
