import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:patino1/core/exports_app_core.dart';

class AppBarService extends PreferredSize {
  AppBarService()
      : super(
            preferredSize: Size(double.infinity, 56),
            child: AppBar(
                elevation: 0,
                backgroundColor: AppColors.colorCotainerPink100,
                title: Container(
                  alignment: Alignment.center,
                  child: Text('Nossos Serviços',
                      style: AppTextStyle.textPinkBold20),
                )));
}
