import 'package:flutter/material.dart';

class IconCardWidget extends StatelessWidget {
  Icon icon;

  IconCardWidget({@required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 150,
      child: Container(
        child: this.icon,
      ),
    );
  }
}
