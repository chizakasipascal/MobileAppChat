import 'package:MobileAppChat/src/models/message.dart';
import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:flutter/material.dart';

class MessagWidget extends StatelessWidget {
  final Message message;

  const MessagWidget({
    this.message,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // do something
      },
      onLongPress: () {
        // do something else
      },
      leading: CircleAvatar(
        backgroundColor: RedColor,
        child: Placeholder(),
      ),
      title: Text(
        message.name,
        style: TextStyle(
          color: BlackColor,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        " ${message.message}",
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: GreeyColor,
          fontSize: 14.0,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 10.0,
            width: 10.0,
            decoration:
                BoxDecoration(color: GreenColor, shape: BoxShape.circle),
          ),
          SizedBox(height: 2),
          Text(
            "${message.hour}",
            style: TextStyle(
              color: GreeyColor,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
