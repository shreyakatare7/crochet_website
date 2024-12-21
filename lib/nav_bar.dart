import 'package:flutter/material.dart';

class NavigationBarWeb extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: const Color(0xFFCB962E),
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: () {}, child: Text('CrochetForLife', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {}, child: Text('About', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {}, child: Text('Basics', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {}, child: Text('Patterns', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {}, child: Text('Contact', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {}, child: Text('Search', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}