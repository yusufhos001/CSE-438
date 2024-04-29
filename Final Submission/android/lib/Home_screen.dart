// Home_screen.dart

import 'package:flutter/material.dart';
import 'package:medico/Pharmacy.dart';
import 'package:medico/DoctorDetailsPage.dart'; // Import the doctor details page file
import 'package:medico/HospitalPage.dart'; // Import the hospital page file
import 'package:medico/AmbulancePage.dart'; // Import the ambulance page file

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Healthcare Solutions'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search doctor, drugs, articles...',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to the doctor details page when doctor logo is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DoctorDetailsPage()),
                    );
                  },
                  child: _buildCategoryButton('Doctor', Icons.local_hospital),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the pharmacy page when the pharmacy logo is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PharmacyPage()),
                    );
                  },
                  child: _buildClickableCategoryButton('Pharmacy', Icons.local_pharmacy, context),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the hospital page when the hospital icon is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HospitalPage()),
                    );
                  },
                  child: _buildCategoryButton('Hospital', Icons.local_hospital),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the ambulance page when the ambulance icon is tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AmbulancePage()),
                    );
                  },
                  child: _buildCategoryButton('Ambulance', Icons.local_taxi),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Early protection for your family health',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle "Learn more" button tap
              },
              child: Text('Learn more'),
            ),
            SizedBox(height: 30),
            _buildTopDoctorProfile('Dr. Abul', 'Cardiologist', '0.80km', 4, 'assets/ji.PNG'),
            _buildTopDoctorProfile('Dr. Maria Elena', 'Psychologist', '1.5km', 3, 'assets/doc 2.PNG'),
            _buildTopDoctorProfile('Dr. Stevi Jessi', 'Orthopedist', '2km', 4, 'assets/doc3.PNG'),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String label, IconData icon) {
    return Column(
      children: [
        Icon(icon, size: 30),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget _buildClickableCategoryButton(String label, IconData icon, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the pharmacy page when the pharmacy logo is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PharmacyPage()),
        );
      },
      child: Column(
        children: [
          Icon(icon, size: 30),
          SizedBox(height: 8),
          Text(label),
        ],
      ),
    );
  }

  Widget _buildTopDoctorProfile(String name, String specialty, String distance, int rating, String imagePath) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(name),
      subtitle: Text('$specialty • $distance away'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(rating, (index) => Icon(Icons.star, color: Colors.yellow)),
      ),
    );
  }
}
