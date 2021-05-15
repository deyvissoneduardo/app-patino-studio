import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/core/app_gradients.dart';
import 'package:patino1/page/Init/controller/init_controller.dart';
import 'package:patino1/page/Init/widgets/card_widget/card_view_empresa.dart';
import 'package:patino1/page/Init/widgets/card_widget/card_view_professional.dart';
import 'package:patino1/page/Init/widgets/logo_widget/logo_center_widget.dart';

class InitPage extends StatefulWidget {
  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends ModularState<InitPage, InitController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: AppGradients.linear),
          child: Align(
            alignment: Alignment.center,
            child: ListView(
              children: [
                // logo
                LogoCenteWidget(),
                const SizedBox(height: 20),
                // card
                CardViewEmpresa(),
                const SizedBox(height: 10),
                CardViewProfessional()
              ],
            ),
          ),
        ),
      );
    });
  }
}
