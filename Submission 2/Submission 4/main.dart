import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medico/onbord.dart'; // Import your login page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(), // Set the splash screen as the initial route
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    // Simulate some asynchronous loading
    await Future.delayed(Duration(seconds: 6));

    setState(() {
      _loading = false;
    });

    // Redirect to the login or sign up page after 3 seconds
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => AboutUsPage(), // Replace with your login page
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.teal, // Teal background color
            ),
            child: Center(
              child: Image.asset(
                'assets/img_1.png', // Replace with your PNG logo
                width: 150,
                height: 150,
              ),
            ),
          ),
          if (_loading)
            Positioned(
              bottom: 16, // Adjust the distance from the bottom as needed
              left: 80,
              right: 80,
              child: SizedBox(
                height: 4, // Adjust the height of the LinearProgressIndicator
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
