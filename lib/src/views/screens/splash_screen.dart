import 'package:MobileAppChat/src/constants/routes.dart';

import 'package:MobileAppChat/src/views/widgets/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashChat extends StatefulWidget {
  @override
  _SplashChatState createState() => _SplashChatState();
}

class _SplashChatState extends State<SplashChat> with TickerProviderStateMixin {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamed(context, Routes.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          BuildBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/icon/logo.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
