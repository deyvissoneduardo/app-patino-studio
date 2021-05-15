import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';

// ignore: must_be_immutable
class ButtonInfoWidget extends StatefulWidget {
  VoidCallback onPressed;
  String titleButton;
  ButtonInfoWidget({
    Key key,
    @required this.onPressed,
    @required this.titleButton,
  }) : super(key: key);

  @override
  _ButtonInfoWidgetState createState() => _ButtonInfoWidgetState();
}

class _ButtonInfoWidgetState extends State<ButtonInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: this.widget.onPressed,
        child: Text(
          this.widget.titleButton,
          style: AppTextStyle.textWrite15,
        ));
  }
}
