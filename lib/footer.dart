import 'package:flutter/material.dart';
class FooterWeb extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(16),
      color: Color(0xFFCB962E),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Homepage', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
              SizedBox(width: 20),
              VerticalDivider(
                color: Color(0xFFFDF3DD),
                thickness: 2,
                width: 20,
              ),
              Text(
                'Contact Me',
                  style: TextStyle(
                  fontFamily: 'Marcellus',
                  color: Color(0xFFFDF3DD),
                    fontSize: 14,
                  ),
              ),
              SizedBox(height: 10),
              Text(
                'email: shreyakatare6@gmail.com',
                style: TextStyle(
                  fontFamily: 'Marcellus',
                  color: Color(0xFFFDF3DD),
                  fontSize: 14,
                ),
              ),
              SizedBox(width: 20),
              VerticalDivider(
                color: Color(0xFFFDF3DD),
                thickness: 2,
                width: 20,
              ),
              Text(
                '© 2024 CrochetForLife',
                style: TextStyle(
                  fontFamily: 'Marcellus',
                  color: Color(0xFFFDF3DD),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}