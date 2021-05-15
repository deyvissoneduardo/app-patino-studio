import 'package:flutter/material.dart';
import 'package:patino1/core/exports_app_core.dart';
import 'package:patino1/page/courses/widgets/description_course_widget/description_course_widget.dart';
import 'package:patino1/page/courses/widgets/title_course_widget/title_course_widget.dart';

class ContentCardCourse extends StatefulWidget {
  ContentCardCourse({Key key}) : super(key: key);

  @override
  _ContentCardCourseState createState() => _ContentCardCourseState();
}

class _ContentCardCourseState extends State<ContentCardCourse> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ListWheelScrollView(
        children: listItems(context, constraints),
        itemExtent: 120,
        useMagnifier: false,
        magnification: 1.25,
      );
    });
  }

  List<Widget> listItems(BuildContext context, BoxConstraints constrainsts) {
    int i = 0;
    List<Widget> items = [];
    do {
      i += 1;
      items.add(Container(
        width: constrainsts.maxHeight,
        child: Card(
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height,
                child: Icon(Icons.wysiwyg_outlined,
                    size: 100, color: AppColors.corTextBlack),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleCourseWidget(title: 'Curso $i'),
                  const SizedBox(width: 5),
                  DescriptionWidget(description: 'Descrição do curso')
                ],
              )
            ],
          ),
        ),
      ));
    } while (i <= 100);
    return items;
  }
}
