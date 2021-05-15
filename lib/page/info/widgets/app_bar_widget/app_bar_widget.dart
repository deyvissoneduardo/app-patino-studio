import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:patino1/core/exports_app_core.dart';

class AppBarInfo extends PreferredSize {
  AppBarInfo()
      : super(
            preferredSize: Size(double.infinity, 56),
            child: AppBar(
                backgroundColor: AppColors.colorCotainerWrite,
                title: Container(
                    alignment: Alignment.center,
                    child:
                        Text('Perfil', style: AppTextStyle.textPinkBold20))));
}
