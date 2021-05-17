import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/core/app_gradients.dart';
import 'package:patino1/core/app_text_style.dart';
import 'package:patino1/page/services/controller/service_controller.dart';
import 'package:patino1/page/services/widgets/app_bar_service/app_bar_service.dart';
import 'package:patino1/page/services/widgets/card_service/card_service.dart';

class ServicePage extends StatefulWidget {
  ServicePage({Key key}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends ModularState<ServicePage, ServiceController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      return Scaffold(
        appBar: AppBarService(),
        body: Container(
          child: Container(
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20.0),
                  crossAxisSpacing: 10.0,
                  crossAxisCount: 2,
                  children: List<Widget>.generate(
                    16,
                    (index) {
                      return CardService();
                    },
                  ))),
        ),
      );
    });
  }
}
