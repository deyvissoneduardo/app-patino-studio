import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppLogoCenter extends StatefulWidget {
  AppLogoCenter();

  @override
  _AppLogoCenterState createState() => _AppLogoCenterState();
}

class _AppLogoCenterState extends State<AppLogoCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: FlutterLogo(
          duration: Duration(seconds: 3),
          size: 100,
        ));
  }
}
