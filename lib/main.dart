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
                  SizedBox(width: 50),
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
                  SizedBox(width: 50),
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
                ]
              )
            ]
          )
        )
      )
    );
  }
}
