import 'dart:math';

import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';

class CardService extends StatefulWidget {
  CardService({Key key}) : super(key: key);

  @override
  _CardServiceState createState() => _CardServiceState();
}

class _CardServiceState extends State<CardService> {
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
          elevation: 8,
          color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
              .withOpacity(1.0),
          child: Container(
            child: Column(
              children: [
                Icon(Icons.perm_contact_calendar_rounded, size: 50),
                const SizedBox(height: 5),
                Text('Nome do Serviço', style: AppTextStyle.textPinkBold15),
                const SizedBox(height: 5),
                Text('Valor do Serviço', style: AppTextStyle.textPinkBold15),
                const SizedBox(height: 5),
                Text('Descrição do Serviço',
                    style: AppTextStyle.textPinkBold15),
              ],
            ),
          )),
    );
  }
}
