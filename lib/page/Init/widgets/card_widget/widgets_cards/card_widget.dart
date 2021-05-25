import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:patino1/core/app_gradients.dart';
import 'package:patino1/core/exports_app_core.dart';

import 'Icon_card_widget.dart';

// ignore: must_be_immutable
class CardWidget extends StatefulWidget {
  VoidCallback onTap;
  final String title;
  final String subTitle;
  Color corText;
  IconData icon;

  CardWidget(
      {@required this.onTap,
      @required this.title,
      @required this.subTitle,
      this.icon,
      @required this.corText});

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTap: this.widget.onTap,
        child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(gradient: AppGradients.linear),
            height: 150,
            width: constraints.maxWidth,
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 20, top: 15, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // icone do card
                  _iconCard(),
                  const SizedBox(
                    width: 20,
                  ),
                  // body card
                  _bodyCard(context, constraints)
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget _iconCard() {
    return IconCardWidget(
      icon: Icon(
        this.widget.icon,
        size: 120,
        color: Colors.black,
      ),
    );
  }

  Widget _bodyCard(BuildContext context, BoxConstraints constraints) {
    return Expanded(
        child: ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: _titleCard(),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                child: _contentCard(),
              ),
            )
          ],
        )
      ],
    ));
  }

  Widget _titleCard() {
    return AutoSizeText(this.widget.title,
        overflow: TextOverflow.ellipsis,
        minFontSize: 4,
        maxLines: 2,
        style: AppTextStyle.textWrite20);
  }

  ///content card
  Widget _contentCard() {
    return AutoSizeText(this.widget.subTitle,
        minFontSize: 4,
        overflow: TextOverflow.ellipsis,
        maxLines: 5,
        style: AppTextStyle.textBlack20);
  }
}
