import 'package:flutter/material.dart';
import 'package:lord_of_the_rings_characters/widgets/character_widget.dart';

class CharacterListingPage extends StatefulWidget {
  @override
  _CharacterListingPageState createState() => _CharacterListingPageState();
}

class _CharacterListingPageState extends State<CharacterListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 8),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Lord of the Rings",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      )),
                  TextSpan(
                    text: "\n",
                  ),
                  TextSpan(
                    text: "Characters",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 26,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: CharacterWidget(),
          )
        ],
      ),
    );
  }
}
