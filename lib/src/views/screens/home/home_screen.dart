import 'package:MobileAppChat/src/models/message.dart';
import 'package:MobileAppChat/src/models/message_list.dart';
import 'package:MobileAppChat/src/utils/colors.dart';
import 'package:MobileAppChat/src/views/widgets/app_chat_bart.dart';
import 'package:MobileAppChat/src/views/widgets/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Message> messages = MessageList.getMessages();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            child: AppChatBar(),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              child: messages.length > 0
                  ? ListView.builder(
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
                      child: SvgPicture.asset("assets/images/empty.svg"),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
