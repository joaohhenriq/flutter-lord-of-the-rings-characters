import 'package:flutter/material.dart';
import 'package:lord_of_the_rings_characters/pages/character_listing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.white
        )
      ),
      debugShowCheckedModeBanner: false,
      home: CharacterListingPage(),
    );
  }
}

