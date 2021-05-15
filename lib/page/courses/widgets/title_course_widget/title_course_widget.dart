import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';

// ignore: must_be_immutable
class TitleCourseWidget extends StatefulWidget {
  String title;
  TitleCourseWidget({Key key, this.title}) : super(key: key);

  @override
  _TitleCourseWidgetState createState() => _TitleCourseWidgetState();
}

class _TitleCourseWidgetState extends State<TitleCourseWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(this.widget.title, style: AppTextStyle.textPinkBold20);
  }
}
