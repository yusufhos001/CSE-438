import 'package:flutter/material.dart';
import 'package:medico/go.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Illustrations of doctors
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img.png', // Replace with your own image
                  width: 300,
                  height: 150,
                ),
                SizedBox(width: 16),
              ],
            ),
            SizedBox(height: 55), // Add spacing between the Row and Text
            Text(
              'ABOUT US',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 60),
            Text(
              'The main motive of the Medical App is to make treatment more accessible to patients. Some features including patient management, doctor details, appointment scheduling, health records, telemedicine functionality, and more will help improve healthcare quality.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 150), // Add more spacing between Text and the button
            // Get Started button
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => GoPage(), // Replace with your login page
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal, // Change the color here
                minimumSize: Size(double.infinity, 48), // Make the button wider
              ),
              child: Text(
                'Get Started',
                style: TextStyle(color: Colors.white, fontSize: 18), // Set text color to white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
