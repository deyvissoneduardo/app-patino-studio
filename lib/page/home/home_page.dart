import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/core/exports_app_core.dart';
import 'package:patino1/page/courses/courses_page.dart';
import 'package:patino1/page/info/info_page.dart';

import 'controller/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: controller.pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: [
            Container(color: Colors.brown),
            Container(color: Colors.red),
            CoursesPage(),
            Container(color: Colors.blue),
            InfoPage(),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 25,
          curve: Curves.easeInExpo,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            controller.pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text('Espaço', style: AppTextStyle.textPink15),
              activeColor: AppColors.corIconPink100,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.watch_outlined),
              title: Text('Serviços', style: AppTextStyle.textPink15),
              activeColor: AppColors.corIconPink100,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.archive_outlined),
              title: Text('Cursos', style: AppTextStyle.textPink15),
              activeColor: AppColors.corIconPink100,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(MaterialIcons.people_outline),
              title: Text('Profissonal', style: AppTextStyle.textPink15),
              activeColor: AppColors.corIconPink100,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.person_rounded),
              title: Text('Info', style: AppTextStyle.textPink15),
              activeColor: AppColors.corIconPink100,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
