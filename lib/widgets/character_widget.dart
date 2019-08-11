import 'package:flutter/material.dart';
import 'package:lord_of_the_rings_characters/model/character_model.dart';
import 'package:lord_of_the_rings_characters/pages/character_detail_page.dart';

class CharacterWidget extends StatelessWidget {

  final CharacterModel characterModel;
  final PageController pageController;
  final int currentIndex;

  const CharacterWidget({Key key, this.characterModel, this.pageController, this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 350),
            pageBuilder: (context, _, __) => CharacterDetailPage(
              character: characterModel,
            ),
          ),
        );
      },
      child: AnimatedBuilder(
        animation: pageController,
        builder: (context, child){
          double value = 1;
          if(pageController.position.haveDimensions){
            value = pageController.page - currentIndex;
            value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
          }

          return Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipPath(
                    clipper: CharacterCardBackgroundClipper(),
                    child: Hero(
                      tag: "background-${characterModel.name}",
                      child: Container(
                        height: 0.6 * screenHeight,
                        width: 0.9 * screenWidth,
                        child: Container(
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
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.6, -1.0),
                child: Hero(
                  tag: "image-${characterModel.name}",
                  child: Image.asset(
                    characterModel.imagePath,
                    height: screenHeight * 0.52 * value,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 48,
                  right: 16,
                  bottom: 30,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: "name-${characterModel.name}",
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          child: Text(
                            characterModel.name,
                            style: TextStyle(
                              fontFamily: "Tangerine Bold",
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Tap to read more",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
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
