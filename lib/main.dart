import 'package:flutter/material.dart';

import 'blog_page.dart';
import 'welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light()
      ),
      home: 
      //BlogPage(), 
      
      const WelcomePage(),
    );
  }
}
