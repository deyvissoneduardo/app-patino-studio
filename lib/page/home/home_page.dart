import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/core/app_colors.dart';
import 'package:patino1/page/Init/init_page.dart';
import 'package:patino1/page/courses/courses_page.dart';
import 'package:patino1/page/home/widgets/drawer_widget/drawer_widget.dart';
import 'package:patino1/page/info/info_page.dart';
import 'package:patino1/page/services/service_page.dart';

import 'controller/home_controller.dart';
import 'widgets/botton_navy/botton_navy_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          body: PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              setState(() => controller.currentIndx = index);
            },
            children: [
              InitPage(),
              ServicePage(),
              CoursesPage(),
              InfoPage(),
            ],
          ),
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: controller.currentIndx,
            showElevation: true,
            itemCornerRadius: 25,
            curve: Curves.easeInExpo,
            onItemSelected: (index) {
              setState(() => controller.currentIndx = index);
              controller.pageController.jumpToPage(index);
            },
            items: <BottomNavyBarItem>[
              BottonNavyWidget(Icon(Icons.home), 'Home'),
              BottonNavyWidget(Icon(Icons.home), 'Serviços'),
              BottonNavyWidget(Icon(Icons.home), 'Cursos'),
              BottonNavyWidget(Icon(Icons.home), 'Info'),
            ],
          ));
    });
  }
}
