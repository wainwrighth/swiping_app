import 'package:flutter/material.dart';

Positioned cardDemoDummy(
    DecorationImage img,
    double bottom,
    double right,
    double left,
    double cardWidth,
    double rotation,
    double skew,
    BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
  return new Positioned(
    bottom: 10.0 + bottom,
    child: new Card(
      color: Colors.transparent,
      elevation: 4.0,
      child: new Container(
        alignment: Alignment.center,
        width: screenSize.width / 1.2 + cardWidth,
        height: screenSize.height / 1.7,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.circular(8.0),
        ),
        child: Stack(
          children: [
            Container(
              width: screenSize.width / 1.2 + cardWidth,
              height: screenSize.height / 1.7,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
                image: img,
              ),
            ),
            new Container(
              color: Colors.transparent,
              width: screenSize.width / 1.2 + cardWidth,
              height:
              screenSize.height / 1.75,
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Text("Party", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 32),),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left:2.0),
                      child: Text("15 Miles", style: TextStyle(color: Colors.white, fontSize: 18),),
                    )
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.info, color: Colors.white, size: 32,),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}