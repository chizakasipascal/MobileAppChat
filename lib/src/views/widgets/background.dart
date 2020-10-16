import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:flutter/material.dart';

class Backgroung extends StatelessWidget {
  const Backgroung({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 90,
          left: 30,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(color: RedColor, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 130,
          left: 100,
          child: Container(
            height: 10,
            width: 10,
            decoration:
                BoxDecoration(color: GreenColor, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 100,
          right: 50,
          child: Container(
            height: 20,
            width: 20,
            decoration:
                BoxDecoration(color: YellowColor, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 170,
          right: 80,
          child: Container(
            height: 30,
            width: 30,
            decoration:
                BoxDecoration(color: GreenColor, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          top: 200,
          left: 20,
          child: Row(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: GreenColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: RedColor, shape: BoxShape.circle),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: GreenColor.withOpacity(.6),
                                shape: BoxShape.circle),
                          ),
                          Container(
                            height: 60,
                            width: 30,
                            decoration: BoxDecoration(
                              color: YellowColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * .8,
                    margin: EdgeInsets.only(left: 8.0),
                    decoration: BoxDecoration(
                      color: GreeyColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        //
                        Stack(
                          children: [
                            Positioned(
                              top: 30,
                              left: 20,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: GreenColor.withOpacity(.5),
                                    shape: BoxShape.circle),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 10,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: WhiteColor, shape: BoxShape.circle),
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              right: 10,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    color: YellowColor, shape: BoxShape.circle),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          bottom: 70,
          right: 30,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(color: RedColor, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          bottom: 100,
          right: 100,
          child: Container(
            height: 10,
            width: 10,
            decoration:
                BoxDecoration(color: GreenColor, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          bottom: 100,
          left: 50,
          child: Container(
            height: 10,
            width: 10,
            decoration:
                BoxDecoration(color: YellowColor, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          bottom: 170,
          left: 80,
          child: Container(
            height: 10,
            width: 10,
            decoration:
                BoxDecoration(color: GreenColor, shape: BoxShape.circle),
          ),
        ),
      ],
    );
  }
}
