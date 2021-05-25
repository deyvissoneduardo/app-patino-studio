import 'dart:math';

import 'package:flutter/material.dart';
import 'package:patino1/core/app_gradients.dart';
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
      child: Container(
        child: Card(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
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
      ),
    );
  }
}
