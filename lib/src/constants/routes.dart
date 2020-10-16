import 'package:MobileAppChat/src/views/screens/screens.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const String home = '/home';
  static const String conversation = '/conversation';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomeScreen(),
    conversation: (BuildContext context) => Conversation(),
  };
}
