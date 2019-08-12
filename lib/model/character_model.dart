class CharacterModel {
  final String name;
  final String imagePath;
  final String description;

  CharacterModel({this.name, this.imagePath, this.description});
}

List characters = [
  CharacterModel(
      name: "Aragorn",
      imagePath: "assets/images/aragorn.png",
      description:
          "Aragorn II, son of Arathorn is a fictional character from J. R. R. Tolkien's legendarium. "
          "He is one of the main protagonists of The Lord of the Rings. Aragorn was a Ranger of the North, "
          "first introduced with the name Strider at Bree, as the Hobbits continued to call him throughout "
          "The Lord of the Rings. He was eventually revealed to be the heir of Isildur and rightful claimant "
          "to the thrones of Arnor and Gondor. He was also a confidant of Gandalf and an integral part of the "
          "quest to destroy the One Ring and defeat the Dark Lord Sauron. "
          "Aragorn led the Fellowship of the Ring following the loss of Gandalf in the Mines of Moria while fighting the Balrog. When the Fellowship was broken, he tracked the hobbits Meriadoc Brandybuck and Peregrin Took with the help of Legolas the elf and Gimli the dwarf to Fangorn Forest. He then fought in the battle at Helm's Deep and the Battle of the Pelennor Fields. After defeating Sauron's forces in Gondor, he led an army of Gondor and Rohan against the Black Gate of Mordor to distract Sauron's attention so that Frodo Baggins and Samwise Gamgee could have a chance to destroy the One Ring."
          "At the end of The Lord of the Rings, Aragorn was crowned King Elessar Telcontar (Elfstone Strider) of Gondor. He married Elrond's daughter, Arwen, and assumed the Sceptre of Annúminas as King of Arnor, uniting the two kingdoms for the first time since the reign of Isildur."),
  CharacterModel(
    name: "Frodo",
    imagePath: "assets/images/frodo.png",
    description:
        "Frodo Baggins is a fictional character in J. R. R. Tolkien's legendarium, and the main protagonist of The Lord of the Rings. Frodo is a hobbit of the Shire who inherits the One Ring from his cousin (referred to as his uncle) Bilbo Baggins and undertakes the quest to destroy it in the fires of Mount Doom. He is also mentioned in Tolkiens posthumously published works, The Silmarillion and Unfinished Tales.",
  )
];
