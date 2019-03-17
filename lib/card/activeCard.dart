import 'dart:math';

import 'package:flutter/material.dart';
import 'package:swiping_app/card/detail.dart';

Positioned cardDemo(
    DecorationImage img,
    double bottom,
    double right,
    double left,
    double cardWidth,
    double rotation,
    double skew,
    BuildContext context,
    Function dismissImg,
    int flag,
    Function addImg,
    Function swipeRight,
    Function swipeLeft) {
  Size screenSize = MediaQuery.of(context).size;
  return Positioned(
    bottom: 10.0 + bottom,
    right: flag == 0 ? right != 0.0 ? right : null : null,
    left: flag == 1 ? right != 0.0 ? right : null : null,
    child: Dismissible(
      key: Key(Random().toString()),
      crossAxisEndOffset: -0.3,
      onResize: () {},
      onDismissed: (DismissDirection direction) {
//          _swipeAnimation();
        if (direction == DismissDirection.endToStart)
          dismissImg(img);
        else
          addImg(img);
      },
      child: Transform(
        alignment: flag == 0 ? Alignment.bottomRight : Alignment.bottomLeft,
        //transform: null,
        transform: Matrix4.skewX(skew),
        //..rotateX(-math.pi / rotation),
        child: RotationTransition(
          turns: AlwaysStoppedAnimation(
              flag == 0 ? rotation / 360 : -rotation / 360),
          child: Hero(
            tag: "img",
            child: GestureDetector(
              onTap: () {},
              child: Card(
                color: Colors.transparent,
                elevation: 4.0,
                child: Container(
                  alignment: Alignment.center,
                  width: screenSize.width / 1.2 + cardWidth,
                  height: screenSize.height / 1.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: screenSize.width / 1.2 + cardWidth,
                        height: screenSize.height / 1.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(8.0),
                          ),
                          image: img,
                        ),
                      ),
                      Container(
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
                              onPressed: () {
                                Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => DetailPage(type: img),
                                ));
                              },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}