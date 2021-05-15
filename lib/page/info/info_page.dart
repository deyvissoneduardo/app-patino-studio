import 'package:flutter/material.dart';
import 'package:patino1/core/app_colors.dart';
import 'package:patino1/core/app_gradients.dart';
import 'package:patino1/page/info/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:patino1/page/info/widgets/button_info_widget/list_button_views/list_button_views.dart';
import 'package:patino1/page/info/widgets/email_widget/email_widget.dart';
import 'package:patino1/page/info/widgets/photo_widget/photo_widget.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBarInfo(),
        body: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppColors.colorPink100, AppColors.colorPink200])),
          child: Column(
            children: [
              PhotoInfoWidget(),
              const SizedBox(height: 5),
              EmailInfoWidget(),
              const SizedBox(height: 15),
              ListButtonView()
            ],
          ),
        ),
      );
    });
  }
}
