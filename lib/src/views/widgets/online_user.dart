import 'dart:ui';

import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:flutter/material.dart';

class OnlineUser extends StatelessWidget {
  const OnlineUser({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 70.0,
              width: 70.0,
              margin: const EdgeInsets.all(5.0),
              decoration:
                  BoxDecoration(color: RedColor, shape: BoxShape.circle),
              child: Image.asset("assets/icon/logo.png"),
            ),
            Positioned(
              bottom: 0,
              right: -1,
              child: Container(
                height: 20.0,
                width: 20.0,
                margin: const EdgeInsets.all(5.0),
                decoration:
                    BoxDecoration(color: GreenColor, shape: BoxShape.circle),
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  margin: const EdgeInsets.all(4.0),
                  decoration:
                      BoxDecoration(color: WhiteColor, shape: BoxShape.circle),
                ),
              ),
            ),
          ],
        ),
        Text(
          "Name",
          style: TextStyle(color: GreeyColor),
        )
      ],
    );
  }
}
