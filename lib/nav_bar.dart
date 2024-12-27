import 'package:crochet_website/pages/about.dart';
import 'package:flutter/material.dart';
import 'package:crochet_website/pages/basics.dart';
import 'package:crochet_website/pages/contact.dart';
import 'package:crochet_website/pages/patterns.dart';
import 'package:crochet_website/main.dart';

class NavigationBarWeb extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: const Color(0xFFCB962E),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/images/icon.png',
          fit: BoxFit.contain,
          width: 148,
          height: 148,
        ),
      ),
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          }, child: Text('CrochetForLife', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
          }, child: Text('About', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Basics()));
          }, child: Text('Basics', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Patterns()));
          }, child: Text('Patterns', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
          }, child: Text('Contact', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 100,
              height: 36, // Adjust height for better alignment
              decoration: BoxDecoration(
                color: const Color(0xFFFDF3DD),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Center(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Color(0xFFCB962E)),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

