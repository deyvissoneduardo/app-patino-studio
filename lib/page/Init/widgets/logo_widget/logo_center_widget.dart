import 'package:flutter/material.dart';

class LogoCenteWidget extends StatelessWidget {
  const LogoCenteWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        width: 150,
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Color(0xff00ffffff),
          child: Image.asset('assets/logo.png'),
        ));
  }
}
