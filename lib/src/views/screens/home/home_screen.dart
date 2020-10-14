import 'package:MobileAppChat/src/views/screens/home/Contacts_screen.dart';
import 'package:MobileAppChat/src/views/screens/home/chat_screen.dart';
import 'package:MobileAppChat/src/views/screens/home/profils_screen.dart';
import 'package:MobileAppChat/src/views/widgets/background.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key("historique-scaffold-key"),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.03,
        backgroundColor: Colors.white60,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "HISTORIQUE",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff525A6C),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            BuildBackground(),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: DefaultTabController(
                length: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TabBar(
                          isScrollable: true,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          labelPadding:
                              const EdgeInsets.only(left: 5, right: 5),
                          labelStyle: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF8F8F8F),
                          ),
                          tabs: [
                            Tab(
                              child: Container(
                                width: 70,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Ventes",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff525A6C),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 70,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Achats",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff525A6C),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                width: 70,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Achats",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff525A6C),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        child: TabBarView(
                          children: [
                            ChatScreen(),
                            ContactScreen(),
                            ProfilsScreen(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
