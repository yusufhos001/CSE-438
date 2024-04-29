import 'package:flutter/material.dart';

class AmbulancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ambulance Services'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Ambulance Services:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 8),
                _buildGlowingSirenIcon(),
              ],
            ),
            SizedBox(height: 30), // Add more space here
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Emergency Contact: 911'),
              onTap: () {
                // Handle tapping on emergency contact
                // You can implement functionality to make a call to 911 here
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Emergency Procedures'),
              onTap: () {
                // Handle tapping on emergency procedures
                // You can navigate to a page displaying emergency procedures here
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Nearest Hospital'),
              onTap: () {
                // Handle tapping on nearest hospital
                // You can navigate to a page displaying nearby hospitals here
              },
            ),
            // Add more ListTile widgets for additional ambulance services or information
          ],
        ),
      ),
    );
  }

  Widget _buildGlowingSirenIcon() {
    return Stack(
      children: [
        Icon(
          Icons.notification_important,
          size: 20,
          color: Colors.red,
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.red.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 20,
                  offset: Offset(0, 0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
