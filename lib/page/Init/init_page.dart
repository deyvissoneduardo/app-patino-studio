import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/core/app_colors.dart';
import 'package:patino1/core/exports_app_core.dart';
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
          decoration: BoxDecoration(color: AppColors.colorCotainerPink100),
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
        drawer: Drawer(
          elevation: 8,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.colorCotainerPink100,
            ),
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: AppColors.colorCotainerPink200),
                  accountName: Text("Cliente", style: AppTextStyle.textWrite15),
                  accountEmail: Text("cliente@gmail.com",
                      style: AppTextStyle.textWrite15),
                  currentAccountPicture: CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.account_circle, size: 60),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text("Meus Dados"),
                    onTap: () {
                      debugPrint('toquei no drawer');
                    }),
                ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text("Logout"),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          ),
        ),
      );
    });
  }
}
