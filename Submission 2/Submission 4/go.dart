import 'package:flutter/material.dart';
import 'package:medico/login.dart';
import 'package:medico/signup.dart';

class GoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img_3.png', // Replace with your own image
                  width: 400,
                  height: 150,
                ),
                SizedBox(width: 16),
              ],
            ),
            SizedBox(height: 55),
            Text(
              'Let’s get started!',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Login to enjoy the features we’ve provided, and stay healthy!',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(), // Replace with your login page
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Teal color
                minimumSize: Size(double.infinity, 66.0), // Wider button
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white, // White text
                ),
              ),
            ),
            SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => SignupPage(), // Replace with your login page
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, // Teal color
                minimumSize: Size(double.infinity, 66.0), // Wider button
              ),
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.teal, // White text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
