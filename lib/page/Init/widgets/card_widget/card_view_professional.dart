import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';

import 'widgets_cards/card_widget.dart';

class CardViewProfessional extends StatefulWidget {
  CardViewProfessional({Key key}) : super(key: key);

  @override
  _CardViewProfessionalState createState() => _CardViewProfessionalState();
}

class _CardViewProfessionalState extends State<CardViewProfessional> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: CardWidget(
        icon: Icons.people,
        onTap: () {
          setState(() {
            print('clicou no card');
          });
        },
        corText: AppColors.colorPink200,
        title: 'Sobre a Profissional',
        subTitle:
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, ',
      ),
    );
  }
}
