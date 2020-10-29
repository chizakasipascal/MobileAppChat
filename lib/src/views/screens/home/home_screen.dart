import 'package:MobileAppChat/src/constants/routes.dart';
import 'package:MobileAppChat/src/models/message.dart';
import 'package:MobileAppChat/src/models/message_list.dart';
import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:MobileAppChat/src/views/widgets/app_chat_bart.dart';
import 'package:MobileAppChat/src/views/widgets/background.dart';
import 'package:MobileAppChat/src/views/widgets/message_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Message> messages = MessageList.getMessages();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "MESSAGES",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
            color: BlackColor,
          ),
        ),
        actions: [
          CircleAvatar(
            child: Placeholder(),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            child: messages.length > 0
                ? ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Dismissible(
                          onDismissed: (DismissDirection direction) {
                            setState(() {
                              messages.removeAt(index);
                            });
                          },
                          secondaryBackground: Container(
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Supprimer',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.delete,
                                    color: WhiteColor,
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ),
                            color: Colors.red,
                          ),
                          background: Container(),
                          key: UniqueKey(),
                          direction: DismissDirection.endToStart,
                          child: MessagWidget(
                            message: messages[index],
                          ),
                        ),
                      );
                    },
                  )
                : Center(
                    child: Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          height: 200,
                          width: 380,
                          decoration: BoxDecoration(
                            color: WhiteColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 150,
                                height: 150,
                                child: Backgroung(),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Votre des réceptions est vidées",
                                style: TextStyle(
                                  color: BlackColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -30,
                          left: 20,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: WhiteColor, shape: BoxShape.circle),
                            child: Container(
                              height: 100,
                              width: 100,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                "assets/icon/logo.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.conversation);
        },
        child: Icon(
          Icons.message,
          color: WhiteColor,
        ),
      ),
    );
  }
}
