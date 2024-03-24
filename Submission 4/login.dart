import 'package:flutter/material.dart';
import 'package:medico/go.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => GoPage(), // Replace with your login page
              ),
            );
          },
        ),
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
                // Implement login logic
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Divider(
                    indent: 20.0,
                    endIndent: 10.0,
                    thickness: 1,
                  ),
                ),
                Text(
                  "OR",
                  style: TextStyle(color: Colors.blueGrey), // Text color
                ),
                Expanded(
                  child: Divider(
                    indent: 10.0,
                    endIndent: 20.0,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            // Social sign-in buttons
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    // Implement Google sign-in
                  },
                  icon: Image.asset(
                    'assets/google.png', // Replace with your image asset path
                    width: 24.0, // Considerable size for the icon
                    height: 24.0,
                    color: Colors.transparent, // White color for the icon
                  ),
                  label: Text(
                    'Sign in with Google',
                    style: TextStyle(
                      color: Colors.black, // White text
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0), // Rounded corners
                    ),
                    minimumSize: Size(double.infinity, 66.0), // Wider button
                  ),
                ),
                SizedBox(height: 16.0), // Add spacing between buttons
                OutlinedButton.icon(
                  onPressed: () {
                    // Implement Apple sign-in
                  },
                  icon: Image.asset(
                    'assets/apple.png', // Replace with your image asset path
                    width: 24.0,
                    height: 24.0,
                    color: Colors.transparent,
                  ),
                  label: Text(
                    'Sign in with Apple',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    minimumSize: Size(double.infinity, 66.0),
                  ),
                ),
                SizedBox(height: 16.0),
                OutlinedButton.icon(
                  onPressed: () {
                    // Implement Facebook sign-in
                  },
                  icon: Image.asset(
                    'assets/facebook.png', // Replace with your image asset path
                    width: 24.0,
                    height: 24.0,
                    color: Colors.transparent,
                  ),
                  label: Text(
                    'Sign in with Facebook',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    minimumSize: Size(double.infinity, 66.0),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
