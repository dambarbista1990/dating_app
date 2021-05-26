import 'package:flutter/material.dart';
import 'discover_page.dart';

void main() {
  runApp(DatingApp());
}

class DatingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE3E5EC),
        body: DiscoverPage(),
      ),
    );
  }
}

