import 'package:flutter/material.dart';
import '../nav_bar.dart';
import '../footer.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: NavigationBarWeb(),
      body: Column(
        children: [
          Container(
            color: const Color(0xFFFDF3DD), // Background color for title
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            width: double.infinity,
            child: Text(
              'Contact Me',
              style: TextStyle(
                fontFamily: 'Marcellus',
                fontSize: screenWidth * 0.05,
                color: Colors.black, // Text color
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Main Content
          Expanded(
            child: Container(
              color: const Color(0xFFFDF3DD), // Page background color
              child: Row(
                children: [
                  // Left Side: Form
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'If you have any questions, feel free to contact me!',
                              style: TextStyle(
                                fontFamily: 'Marcellus',
                                fontSize: screenWidth * 0.02,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 24),
                            TextField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                labelText: 'Name',
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: const Color(0xFFEF601E),
                              ),
                            ),
                            SizedBox(height: 16),
                            TextField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: const Color(0xFFEF601E), // Input background color
                              ),
                            ),
                            SizedBox(height: 16),
                            TextField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                labelText: 'Subject',
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: const Color(0xFFEF601E), // Input background color
                              ),
                            ),
                            SizedBox(height: 16),
                            TextField(
                              style: TextStyle(color: Colors.black),
                              maxLines: 4,
                              decoration: InputDecoration(
                                labelText: 'Message',
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: const Color(0xFFEF601E), // Input background color
                              ),
                            ),
                            SizedBox(height: 24),
                            ElevatedButton(
                              onPressed: () {
                                // Handle Submit
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFD6E8F7),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8.0,
                                  horizontal: 16.0,
                                ),
                              ),
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.02,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Right Side: Contact Info
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email:',
                            style: TextStyle(
                              fontFamily: 'Marcellus',
                              fontSize: screenWidth * 0.02,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'shreyakatare6@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Marcellus',
                              fontSize: screenWidth * 0.02,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Footer
          FooterWeb(),
        ],
      ),
    );
  }
}
