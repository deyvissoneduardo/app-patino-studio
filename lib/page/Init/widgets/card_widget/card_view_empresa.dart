import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';

import 'widgets_cards/card_widget.dart';

class CardViewEmpresa extends StatefulWidget {
  CardViewEmpresa({Key key}) : super(key: key);

  @override
  _CardViewEmpresaState createState() => _CardViewEmpresaState();
}

class _CardViewEmpresaState extends State<CardViewEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: CardWidget(
        icon: Icons.archive_outlined,
        onTap: () {
          setState(() {
            print('clicou no card');
          });
        },
        corText: AppColors.colorPink200,
        title: 'Sobre a Empresa',
        subTitle:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ',
      ),
    );
  }
}
