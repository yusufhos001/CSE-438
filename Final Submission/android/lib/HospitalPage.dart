import 'package:flutter/material.dart';

class HospitalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHospitalInfoCard(
              'ABC Hospital',
              '123 Main Street, City A, Country',
              '24/7',
              true,
              'ABC Hospital provides a wide range of medical services... For emergencies, please call 911.',
              'assets/hospital1.jpg',
            ),
            SizedBox(height: 20),
            _buildHospitalInfoCard(
              'XYZ Hospital',
              '456 Elm Street, City B, Country',
              '8 AM - 6 PM',
              false,
              'XYZ Hospital specializes in pediatric care... For emergencies, please call 911.',
              'assets/hospital2.jpg',
            ),
            SizedBox(height: 20),
            _buildHospitalInfoCard(
              'DEF Hospital',
              '789 Oak Street, City C, Country',
              '24/7',
              true,
              'DEF Hospital offers advanced surgical procedures... For emergencies, please call 911.',
              'assets/hospital3.jpg',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHospitalInfoCard(String hospitalName, String address, String operatingHours, bool hasAmbulance, String additionalInfo, String imagePath) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Hospital Name: $hospitalName',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Address: $address',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Operating Hours: $operatingHours',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Ambulance Service: ${hasAmbulance ? 'Available' : 'Not Available'}',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Additional Information:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              additionalInfo,
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
