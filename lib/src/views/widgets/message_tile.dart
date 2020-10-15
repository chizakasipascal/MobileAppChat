import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: ListTile(
        leading: Container(
          height: 80.0,
          width: 80.0,
          decoration: BoxDecoration(color: RedColor, shape: BoxShape.circle),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pascal kasi",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                Row(
                  children: [
                    Text(
                      "me: ",
                      style: TextStyle(color: RedColor),
                    ),
                    Text(
                      "Lorem ipsum,or lipsum as it li...",
                      style: TextStyle(color: GreeyColor),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "10:28",
              style: TextStyle(fontSize: 13, color: GreeyColor),
            ),
          ],
        ),
      ),
    );
  }
}
