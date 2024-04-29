import 'package:flutter/material.dart';
import 'package:medico/go.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Name input field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  labelStyle: TextStyle(
                    color: Colors.grey.shade400, // Set the desired text color
                  ),
                  prefixIcon: Icon(
                    Icons.person,
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
              SizedBox(height: 16.0),
              // Confirm Password input field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm your password',
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
              SizedBox(height: 16.0),
              // Agreement Checkbox
              Row(
                children: [
                  Checkbox(
                    value: false, // Initially unchecked
                    onChanged: (newValue) {
                      // Handle checkbox state change
                    },
                  ),
                  Expanded(
                    child: Text(
                      'I agree to the medidoc Terms of Service and Privacy Policy.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              // Sign up button
              ElevatedButton(
                onPressed: () {
                  // Implement sign up logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, // Teal color
                  minimumSize: Size(double.infinity, 48), // Wider button
                ),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white, // White text
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
