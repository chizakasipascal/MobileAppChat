import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:MobileAppChat/src/views/widgets/message_tile.dart';
import 'package:MobileAppChat/src/views/widgets/online_user.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // SizedBox(height: 80),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OnlineUser(),
                  OnlineUser(),
                  OnlineUser(),
                  OnlineUser(),
                  OnlineUser(),
                  OnlineUser(),
                  OnlineUser(),
                  OnlineUser(),
                ],
              ),
            ),
            SizedBox(height: 10),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
            MessageTile(),
          ],
        ),
      ),
    );
  }
}
