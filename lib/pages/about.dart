import 'package:flutter/material.dart';
import '../nav_bar.dart';
import '../footer.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: NavigationBarWeb(),
      body: Container(
        color: const Color(0xFFFDF3DD),
        width: double.infinity,
        height: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFEF601E),
                  image: DecorationImage(
                    image: AssetImage('assets/images/about_image.jpg'),
                    fit: BoxFit.cover,
                  )
                )
              )
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'What is CrochetForLife?',
                        style: TextStyle(
                          fontFamily: 'Marcellus',
                          fontSize: screenWidth * 0.05,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'CrochetForLife is a website designed to help crochet-lovers at all skill levels to create work that helps them in a day-to-day life.',
                        style: TextStyle(
                        fontFamily: 'Marcellus',
                        fontSize: screenWidth * 0.04,
                        color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'These may include clothes, bags, coasters, etc!',
                        style: TextStyle(
                          fontFamily: 'Marcellus',
                          fontSize: screenWidth * 0.04,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'The website additionally provides the basics of crocheting and detailed patterns for each skill level.',
                        style: TextStyle(
                          fontFamily: 'Marcellus',
                          fontSize: screenWidth * 0.04,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                )
              )
            ),
            FooterWeb(),
          ],
        ),
      ),
    );
  }
}
