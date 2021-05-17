import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';

class PhotoInfoWidget extends StatefulWidget {
  PhotoInfoWidget({Key key}) : super(key: key);

  @override
  _PhotoInfoWidgetState createState() => _PhotoInfoWidgetState();
}

class _PhotoInfoWidgetState extends State<PhotoInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 5,
        child: Icon(
          Icons.person,
          size: 150,
          color: AppColors.colorPink200,
        ));
  }
}
