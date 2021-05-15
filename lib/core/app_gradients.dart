import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:patino1/core/app_colors.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    AppColors.colorPink100,
    AppColors.colorPink200,
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));
}
