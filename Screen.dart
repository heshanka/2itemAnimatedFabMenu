import 'package:flutter/material.dart';

// Code for a screen containing only the Fab Menu
class Screen extends StatefulWidget {

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  Alignment upperBtnAlign = Alignment(0.905, 0.954);
  Alignment lowerBtnAlign = Alignment(0.905, 0.954);
  bool fabClick = false;

  void changeBtnAlign() {
    if (fabClick)
      setState(() {
        upperBtnAlign = Alignment(0.7, 0.7);
        lowerBtnAlign = Alignment(0.4, 0.85);
      });
    else {
      setState(() {
        upperBtnAlign = Alignment(0.905, 0.954);
        lowerBtnAlign = Alignment(0.905, 0.954);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            //The body of the screen other than the Fab Menu should be entered as the children of the column
            Column(
              children: [
              ],
            ),
            AnimatedAlign(
              alignment: upperBtnAlign,
              curve: Curves.easeOut,
              duration: Duration(milliseconds: 300),
              onEnd: () {
                debugPrint("ANIMATION ENDED");
              },
              child: FloatingActionButton(
                heroTag: "upperButton",
                backgroundColor: Color(0xff89cf95),
                foregroundColor: Colors.white,
                child: Icon(Icons.edit),
                onPressed: () {},
              ),
            ),
            AnimatedAlign(
              alignment: lowerBtnAlign,
              curve: Curves.easeOut,
              duration: Duration(milliseconds: 300),
              onEnd: () {
                debugPrint("ANIMATION ENDED");
              },
              child: FloatingActionButton(
                heroTag: "lowerButton",
                backgroundColor: Color(0xffF4C2C2),
                foregroundColor: Colors.white,
                child: Icon(Icons.add_a_photo),
                onPressed: () {},
              ),
            ),
          ],
        ),
        //todo what should this button do exactly?
        floatingActionButton: FloatingActionButton(
          heroTag: "addButton",
          backgroundColor: Color(0xff89cff0),
          foregroundColor: Colors.white,
          child: Icon(
            Icons.add,
            size: 40,
          ),
          onPressed: () {
            setState(() {
              fabClick = !fabClick;
            });
            changeBtnAlign();
          },
        ),
    );
  }
}
