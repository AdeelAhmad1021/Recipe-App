import 'package:flutter/material.dart';
import 'package:new_pro/about.dart';
import 'package:new_pro/language.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Notification Settings'),
            trailing: Switch(
              value: true, // Example switch value, replace with actual state
              onChanged: (value) {
                // Implement logic to toggle notification settings
              },
            ),
          ),
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: false, // Example switch value, replace with actual state
              onChanged: (value) {
                // Implement logic to toggle dark mode
              },
            ),
          ),
          ListTile(
            title: Text('Language'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => LanguagePage()),
              );
              // Navigate to language selection page
            },
          ),
          ListTile(
            title: Text('About'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => AboutPage()),
                
                );
              // Navigate to about page
            },
          ),
        ],
      ),
    );
  }
}
