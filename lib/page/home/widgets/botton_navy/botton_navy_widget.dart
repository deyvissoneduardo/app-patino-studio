import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';

class BottonNavyWidget extends BottomNavyBarItem {
  Icon icon;
  // ignore: unused_field
  String _title = '';
  BottonNavyWidget(this.icon, this._title)
      : super(
          icon: icon,
          title: Text(_title, style: AppTextStyle.textPink15),
          activeColor: AppColors.corIconPink200,
          textAlign: TextAlign.center,
        );
}
