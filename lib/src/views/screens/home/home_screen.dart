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
  TextEditingController _controllerRecherche;

  @override
  void initState() {
    super.initState();
    _controllerRecherche = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                length: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      color: Color(0xFFDEDEDE),
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                                left: 5,
                                bottom: 5,
                              ),
                              width: size.width * .45,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: TextFormField(
                                    controller: _controllerRecherche,
                                    onChanged: (text) {
                                      print("::::::onSeach:::$text");
                                    },
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.only(
                                        top: 5,
                                      ),
                                      hintText: "Rechercher",
                                      hintStyle: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey[300],
                                      ),
                                      labelStyle: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                      border: InputBorder.none,
                                      suffixIcon: Icon(
                                        Icons.search,
                                        size: 18,
                                        color: Color(0xff525A6C),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFFDEDEDE),
                            ),
                            padding: const EdgeInsets.only(
                              top: 5,
                              bottom: 5,
                            ),
                            margin: const EdgeInsets.only(right: 5, top: 5),
                            child: TabBar(
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
                              ],
                            ),
                          ),
                        ],
                      ),
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
