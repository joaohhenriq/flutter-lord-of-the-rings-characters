import 'package:flutter/material.dart';

class CharacterModel {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;
  final String backgroundPath;

  CharacterModel({this.name, this.imagePath, this.description, this.colors, this.backgroundPath});
}

List characters = [
  CharacterModel(
      name: "Aragorn",
      imagePath: "assets/images/aragorn.png",
      description:
          "Aragorn II, son of Arathorn is a fictional character from J. R. R. Tolkien's legendarium. He is one of the main protagonists of The Lord of the Rings. Aragorn was a Ranger of the North, first introduced with the name Strider at Bree, as the Hobbits continued to call him throughout The Lord of the Rings. He was eventually revealed to be the heir of Isildur and rightful claimant to the thrones of Arnor and Gondor. He was also a confidant of Gandalf and an integral part of the quest to destroy the One Ring and defeat the Dark Lord Sauron.",
      colors: [Colors.blue, Colors.red],
      backgroundPath: "assets/images/aragorn-background.jpg"
    )
];
