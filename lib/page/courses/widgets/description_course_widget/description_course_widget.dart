import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';

// ignore: must_be_immutable
class DescriptionWidget extends StatefulWidget {
  String description;
  DescriptionWidget({Key key, this.description}) : super(key: key);

  @override
  _DescriptionWidgetState createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(this.widget.description, style: AppTextStyle.textBlack15);
  }
}
