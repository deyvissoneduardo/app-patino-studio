import 'package:flutter/material.dart';

class LogoCenteWidget extends StatelessWidget {
  const LogoCenteWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        width: 150,
        child: Image.network(
            'http://studiopatino.com.br/modelo-site/Logo-favicon.png'));
  }
}
