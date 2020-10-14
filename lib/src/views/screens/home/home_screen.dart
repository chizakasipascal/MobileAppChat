import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:MobileAppChat/src/views/screens/home/Contacts_screen.dart';
import 'package:MobileAppChat/src/views/screens/home/chat_screen.dart';
import 'package:MobileAppChat/src/views/screens/home/profils_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(text: "Chats"),
    Tab(text: "Contacts"),
    Tab(text: "Profils"),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: DefaultTabController(
        length: 3,
        child: MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: WhiteColor,
              bottom: TabBar(
                controller: _controller,
                tabs: list,
                indicatorColor: RedColor,
                labelColor: GreeyColor,
                labelStyle: TextStyle(color: GreeyColor, fontSize: 18),
                onTap: (index) {
                  // Tab index when user select it, it start from zero
                },
              ),
              title: Text(
                'Connectis ',
                style: TextStyle(color: RedColor),
              ),
            ),
            body: TabBarView(
              controller: _controller,
              children: [
                Text(
                  _selectedIndex.toString(),
                ),
                ContactScreen(),
                ProfilsScreen()
              ],
            ),
          ),
        ),
      )),
    );
  }
}
