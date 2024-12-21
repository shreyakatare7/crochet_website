import 'package:flutter/material.dart';
import '../nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: NavigationBarWeb(),
    );
  }
}
