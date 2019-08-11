import 'package:flutter/material.dart';
import 'package:lord_of_the_rings_characters/model/character_model.dart';
import 'package:lord_of_the_rings_characters/widgets/character_widget.dart';

class CharacterListingPage extends StatefulWidget {
  @override
  _CharacterListingPageState createState() => _CharacterListingPageState();
}

class _CharacterListingPageState extends State<CharacterListingPage> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(
        viewportFraction: 1.0, initialPage: currentPage, keepPage: false);
    super.initState();
  }

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 8),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Lord of the Rings",
                        style: TextStyle(
                          fontFamily: "Tangerine Bold",
                          color: Colors.black,
                          fontSize: 60,
                        )),
                    TextSpan(
                      text: "\n",
                    ),
                    TextSpan(
                      text: "Characters",
                      style: TextStyle(
                        fontFamily: "Tangerine",
                        color: Colors.grey[600],
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: <Widget>[
                  for (var i = 0; i < characters.length; i++)
                    CharacterWidget(
                      characterModel: characters[i],
                      pageController: _pageController,
                      currentIndex: i
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
