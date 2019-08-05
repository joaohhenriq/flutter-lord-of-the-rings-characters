import 'package:flutter/material.dart';
import 'package:lord_of_the_rings_characters/model/character_model.dart';

class CharacterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        Container(
          height: 0.55 * screenHeight,
          width: 0.9 * screenHeight,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: characters[0].colors,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              )
          ),
        ),
      ],
    );
  }
}
