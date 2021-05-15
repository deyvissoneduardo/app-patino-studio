import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';

class EmailInfoWidget extends StatefulWidget {
  EmailInfoWidget({Key key}) : super(key: key);

  @override
  _EmailInfoWidgetState createState() => _EmailInfoWidgetState();
}

class _EmailInfoWidgetState extends State<EmailInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text('cliente@gmail.com', style: AppTextStyle.textWrite15));
  }
}
