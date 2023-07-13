import 'package:components/components.dart';
import 'package:flutter/material.dart';
import 'package:news_app/ui/news_feed/news_feed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: simpleAppTheme(),
      home: const NewsFeedScreen(),
    );
  }
}

