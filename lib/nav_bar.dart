import 'package:flutter/material.dart';

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
        ),
      ),
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: () {}, child: Text('CrochetForLife', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {}, child: Text('About', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {}, child: Text('Basics', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {}, child: Text('Patterns', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
          TextButton(onPressed: () {}, child: Text('Contact', style: TextStyle(fontFamily: 'Marcellus', fontSize: 14, color: const Color(0xFFFDF3DD)))),
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
                    onChanged: (value) {
                      debugPrint('Search: $value'); // Replace with actual search logic
                    },
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

