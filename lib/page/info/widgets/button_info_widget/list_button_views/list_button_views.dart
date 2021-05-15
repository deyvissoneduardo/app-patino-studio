import 'package:flutter/material.dart';

import '../button_info_widget.dart';

class ListButtonView extends StatefulWidget {
  ListButtonView({Key key}) : super(key: key);

  @override
  _ListButtonViewState createState() => _ListButtonViewState();
}

class _ListButtonViewState extends State<ListButtonView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ButtonInfoWidget(onPressed: () {}, titleButton: 'Botao 1'),
          const SizedBox(height: 3),
          ButtonInfoWidget(onPressed: () {}, titleButton: 'Botao 2'),
          const SizedBox(height: 3),
          ButtonInfoWidget(onPressed: () {}, titleButton: 'Info App'),
        ],
      ),
    );
  }
}
