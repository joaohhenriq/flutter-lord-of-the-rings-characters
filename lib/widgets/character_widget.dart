import 'package:flutter/material.dart';
import 'package:lord_of_the_rings_characters/model/character_model.dart';

class CharacterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CharacterCardBackgroundClipper(),
              child: Container(
                height: 0.6 * screenHeight,
                width: 0.9 * screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      characters[0].backgroundPath,
                    ),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.7),
                        Colors.black,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.6, -0.45),
          child: Image.asset(
            characters[0].imagePath,
            height: screenHeight * 0.60,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 48, right: 16, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                characters[0].name,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 28,
                    color: Colors.white),
              ),
              Text(
                "Tap to read more",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(
        1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width,
        size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(size.width - 1, 0,
        size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(
        1, (size.height * 0.30) + 10, 0, size.height * 0.4);

    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
