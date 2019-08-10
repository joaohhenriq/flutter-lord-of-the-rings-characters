import 'package:flutter/material.dart';
import 'package:lord_of_the_rings_characters/model/character_model.dart';

class CharacterDetailPage extends StatefulWidget {
  final CharacterModel character;

  const CharacterDetailPage({Key key, this.character}) : super(key: key);

  @override
  _CharacterDetailPageState createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState extends State<CharacterDetailPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
            tag: "background-${widget.character.name}",
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black87,
                    Colors.black87,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 16),
                  child: IconButton(
                    iconSize: 40,
                    color: Colors.white.withOpacity(0.7),
                    icon: Icon(
                      Icons.close,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Hero(
                      tag: "image-${widget.character.name}",
                      child: Image.asset(
                        widget.character.imagePath,
                        height: height * 0.45,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Hero(
                    tag: "name-${widget.character.name}",
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        child: Text(
                          widget.character.name,
                          style: TextStyle(
                            fontFamily: "Tangerine Bold",
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 8, 60),
                  child: Text(
                    widget.character.description,
                    style: TextStyle(
                      fontFamily: "Tangerine",
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
