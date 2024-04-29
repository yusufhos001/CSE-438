import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:medico/Home_screen.dart';

class LoginPage extends StatelessWidget {
  Future<void> _login(BuildContext context) async {
    // Simulate login with email and password
    final String email = 'yusuf.hossain001@gmail.com';
    final String password = '890';

    // Check if email and password are correct
    if (await _checkCredentials(email, password)) {
      // Navigate to Home_screen if credentials are correct
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    } else {
      // Show error message if credentials are incorrect
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Login Failed'),
            content: Text('Incorrect email or password. Please try again.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  Future<bool> _checkCredentials(String email, String password) async {
    // Check if the entered email and password match the predefined values
    if (email == 'yusuf.hossain001@gmail.com' && password == '890') {
      // Save user data to a file
      await _writeToFile(email);
      return true;
    }
    return false;
  }

  Future<void> _writeToFile(String data) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/user_data.txt');
    await file.writeAsString(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Email input field
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your email',
                labelStyle: TextStyle(
                  color: Colors.grey.shade400, // Set the desired text color
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.grey.shade300, // Greyish-blue color
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0), // Rounded corners
                  borderSide: BorderSide(
                    color: Colors.grey.shade100, // Border color
                    width: 1, // Border width
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Password input field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Enter your password',
                labelStyle: TextStyle(
                  color: Colors.grey.shade400, // Set the desired text color
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey.shade300, // Greyish-blue color
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0), // Rounded corners
                  borderSide: BorderSide(
                    color: Colors.grey.shade100, // Border color
                    width: 1, // Border width
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.0), // Add spacing between password field and forgot password text
            GestureDetector(
              onTap: () {
                // Implement forgot password functionality
              },
              child: Container(
                alignment: Alignment.topRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.teal, // Greyish-blue color
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                _login(context); // Call login method
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
            // Sign-up link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                SizedBox(width: 4.0),
                TextButton(
                  onPressed: () {
                    // Navigate to sign-up page
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.teal, // Greyish-blue color
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            // Sign in options list
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  _buildSignInOption('Sign in with Google', 'assets/google.png'),
                  _buildSignInOption('Sign in with Apple', 'assets/apple.png'),
                  _buildSignInOption('Sign in with Facebook', 'assets/facebook.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignInOption(String text, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
