import 'package:MobileAppChat/src/views/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants/app_theme.dart';
import 'constants/routes.dart';
import 'constants/strings.dart';

class MobileAppChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      title: Strings.appName,
      home: SplashChat(),
      routes: Routes.routes,
    );
  }
}
