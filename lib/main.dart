import 'package:crochet_website/pages/basics.dart';
import 'package:crochet_website/pages/contact.dart';
import 'package:crochet_website/pages/patterns.dart';
import 'package:flutter/material.dart';
import '../nav_bar.dart';
import '../footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CrochetForLife',
      theme: ThemeData(
        primaryColor: const Color(0xFFCB962E),
        fontFamily: 'Marcellus',
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: NavigationBarWeb(),
      body: Container(
        color: const Color(0xFFFDF3DD),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                Text(
                  'Welcome to CrochetForLife!',
                  style: TextStyle(
                    fontFamily: 'Marcellus',
                    fontSize: screenWidth * 0.04, // Responsive font size
                    letterSpacing: 2,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  '“Learn to crochet useful objects at your own pace.”',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Marcellus',
                    fontSize: screenWidth * 0.04,
                    letterSpacing: 2,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 32),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: screenWidth * 0.05,
                  runSpacing: screenHeight * 0.02,
                  children: [
                    _responsiveButton('Learn the Basics', screenWidth, () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Basics()));
                    }),
                    _responsiveButton('Browse Patterns', screenWidth, () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Patterns()));
                    }),
                    _responsiveButton('Contact Me', screenWidth, () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
                    }),
                  ],
                ),
                SizedBox(height: 32),
                Container(
                  width: screenWidth * 0.8, // Adjust width dynamically
                  decoration: BoxDecoration(
                    color: const Color(0xFFD6E8F7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(screenWidth * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Featured Patterns',
                        style: TextStyle(
                          fontFamily: 'Marcellus',
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FeaturedPattern(
                              imagePath: 'assets/design1.png',
                              title: 'Pattern 1',
                            ),
                            SizedBox(width: screenWidth * 0.05),
                            FeaturedPattern(
                              imagePath: 'assets/design2.png',
                              title: 'Pattern 2',
                            ),
                            SizedBox(width: screenWidth * 0.05),
                            FeaturedPattern(
                              imagePath: 'assets/design3.png',
                              title: 'Pattern 3',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                FooterWeb(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _responsiveButton(String text, double screenWidth, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFCAAACD),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
          vertical: screenWidth * 0.02,
        ),
        textStyle: TextStyle(
          fontFamily: 'Caveat',
          fontSize: screenWidth * 0.04,
          color: const Color(0xFFFDF3DD),
        ),
      ),
      child: Text(text),
    );
  }
}

class FeaturedPattern extends StatelessWidget {
  final String imagePath;
  final String title;

  FeaturedPattern({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          width: screenWidth * 0.2,
          height: screenWidth * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: screenWidth * 0.035,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
