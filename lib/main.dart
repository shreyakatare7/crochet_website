import 'package:flutter/material.dart';
import '../nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
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
    return Scaffold(
      appBar: NavigationBarWeb(),
      body: Container(
        color: const Color(0xFFFDF3DD),
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
                      fontSize: 16,
                      letterSpacing: 2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '“Learn to crochet useful objects at your own pace.”',
                    style: TextStyle(
                      fontFamily: 'Marcellus',
                      fontSize: 16,
                      letterSpacing: 2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFCAAACD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                            textStyle: TextStyle(
                              fontFamily: 'Caveat',
                              fontSize: 16,
                              color: const Color(0xFFFDF3DD),
                            )
                        ),
                        child: Text('Learn the Basics'),
                      ),
                      SizedBox(width: 200),
                      ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFCAAACD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                            textStyle: TextStyle(
                              fontFamily: 'Caveat',
                              fontSize: 16,
                              color: const Color(0xFFFDF3DD),
                            )
                        ),
                        child: Text('Browse Patterns'),
                      ),
                      SizedBox(width: 200),
                      ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFCAAACD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                            textStyle: TextStyle(
                              fontFamily: 'Caveat',
                              fontSize: 16,
                              color: const Color(0xFFFDF3DD),
                            )
                        ),
                        child: Text('Contact Me'),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Container(
                    width: 760,
                    color: const Color(0xFFD6E8F7),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Featured Patterns',
                          style: TextStyle(
                            fontFamily: 'Marcellus',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FeaturedPattern(
                                imagePath: 'assets/design1.png',
                                title: 'Pattern 1',
                              ),
                              SizedBox(width: 100),
                              FeaturedPattern(
                                imagePath: 'assets/design2.png',
                                title: 'Pattern 2',
                              ),
                              SizedBox(width: 100),
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
                ],
              ),
            )
        ),
      ),
    );
  }
}

class FeaturedPattern extends StatelessWidget {
  final String imagePath;
  final String title;

  FeaturedPattern({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
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
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}