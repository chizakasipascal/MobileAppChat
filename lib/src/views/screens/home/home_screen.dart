import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:flutter/material.dart';

import 'Contacts_screen.dart';
import 'chat_screen.dart';
import 'profils_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
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
                CircleAvatar()
              ],
            ),
            ListTile(
                leading: CircleAvatar(),
                title: Text(
                  "Pascal Kasi",
                  style: TextStyle(
                    color: BlackColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  " Library that provides interfaces and corresponding wrapper for system classes to allow faking them",
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
                      decoration: BoxDecoration(
                          color: GreenColor, shape: BoxShape.circle),
                    ),
                    SizedBox(height: 2),
                    Text(
                      "10:28",
                      style: TextStyle(
                        color: GreeyColor,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
