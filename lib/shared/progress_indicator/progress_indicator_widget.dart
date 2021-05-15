import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';

// ignore: must_be_immutable
class ProgressIndicatorWidget extends StatelessWidget {
  String msg;
  ProgressIndicatorWidget({Key key, @required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.5),
      child: AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(this.msg, style: AppTextStyle.textPinkBold20)
          ],
        ),
      ),
    );
  }
}
