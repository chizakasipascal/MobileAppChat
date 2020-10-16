import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:flutter/material.dart';

class AppChatBar extends StatelessWidget {
  const AppChatBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          Text(
            "MESSAGES",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
              color: BlackColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: CircleAvatar(),
          ),
        ],
      ),
    );
  }
}
