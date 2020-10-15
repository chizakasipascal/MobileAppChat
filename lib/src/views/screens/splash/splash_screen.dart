import 'package:MobileAppChat/src/views/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animation_screen.dart';

class SplashChat extends StatefulWidget {
  @override
  _SplashChatState createState() => _SplashChatState();
}

class _SplashChatState extends State<SplashChat> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Scaffold(
            body: HomeScreen(),
          ),
          IgnorePointer(
            child: AnimationScreen(color: Theme.of(context).accentColor),
          ),
        ],
      ),
    );
  }
}
