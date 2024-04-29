import 'package:flutter/material.dart';

class DoctorDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDoctorCard('Dr. John Doe', 'Cardiologist', 'assets/doctor_image.jpg', context,
                  'Phone: 123-456-7890\nEmail: john.doe@example.com\nOffice Hours:\nMonday - Friday: 9:00 AM - 5:00 PM\nSaturday: 10:00 AM - 2:00 PM\nLocation: 123 Main Street, City, Country'),
              _buildDoctorCard('Dr. Jane Smith', 'Dermatologist', 'assets/dermatologist.jpg', context,
                  'Phone: 987-654-3210\nEmail: jane.smith@example.com\nOffice Hours:\nMonday - Friday: 8:00 AM - 4:00 PM\nSaturday: Closed\nLocation: 456 Oak Street, City, Country'),
              _buildDoctorCard('Dr. Michael Johnson', 'Medicine Doctor', 'assets/medicine_doctor.jpg', context,
                  'Phone: 555-123-4567\nEmail: michael.johnson@example.com\nOffice Hours:\nMonday - Friday: 10:00 AM - 6:00 PM\nSaturday: 9:00 AM - 1:00 PM\nLocation: 789 Pine Avenue, City, Country'),
              _buildDoctorCard('Dr. Emily Brown', 'Fever Specialist', 'assets/fever_specialist.jpg', context,
                  'Phone: 321-555-7890\nEmail: emily.brown@example.com\nOffice Hours:\nMonday - Friday: 8:00 AM - 4:00 PM\nSaturday: Closed\nLocation: 101 Maple Lane, City, Country'),
              _buildDoctorCard('Dr. William Clark', 'Orthopedic Surgeon', 'assets/orthopedic_surgeon.jpg', context,
                  'Phone: 999-888-7777\nEmail: william.clark@example.com\nOffice Hours:\nMonday - Friday: 9:00 AM - 5:00 PM\nSaturday: 10:00 AM - 3:00 PM\nLocation: 246 Elm Street, City, Country'),
              _buildDoctorCard('Dr. Sarah Wilson', 'Pediatrician', 'assets/pediatrician.jpg', context,
                  'Phone: 444-333-2222\nEmail: sarah.wilson@example.com\nOffice Hours:\nMonday - Friday: 8:00 AM - 6:00 PM\nSaturday: 9:00 AM - 12:00 PM\nLocation: 789 Cedar Avenue, City, Country'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorCard(String name, String specialty, String imagePath, BuildContext context, String details) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(imagePath),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      specialty,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _navigateToChat(context, name); // Navigate to the chat interface
              },
              child: Text('Chat'),
            ),
            SizedBox(height: 10),
            Text(
              'Details:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              details,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToChat(BuildContext context, String doctorName) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatPage(doctorName)),
    );
  }
}

class ChatPage extends StatefulWidget {
  final String doctorName;

  ChatPage(this.doctorName);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with ${widget.doctorName}'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(hintText: 'Type your message...'),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    _sendMessage();
                  },
                  child: Text('Send'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        _messages.add(_messageController.text);
        _messageController.clear();
      });
    }
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoctorDetailsPage(),
    );
  }
}
