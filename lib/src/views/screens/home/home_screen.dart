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
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: WhiteColor,
                  expandedHeight: 200.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    background: Container(
                      child: Center(child: Text("Pas d'insipiration")),
                      //TODO:Sliver pas finis
                    ),
                  ),
                  bottom: TabBar(
                    labelColor: RedColor,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: RedColor,
                    labelStyle: TextStyle(fontSize: 18),
                    tabs: [
                      new Tab(text: "Chats"),
                      new Tab(text: "Contacts"),
                      new Tab(text: "Profils"),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                ChatScreen(),
                ContactScreen(),
                ProfilsScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
