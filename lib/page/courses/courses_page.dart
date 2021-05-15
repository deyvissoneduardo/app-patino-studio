import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/core/app_colors.dart';
import 'package:patino1/core/app_gradients.dart';
import 'package:patino1/core/app_text_style.dart';
import 'package:patino1/page/courses/controller/courses_controller.dart';
import 'package:patino1/page/courses/widgets/app_bar_courses/app_bar_widget_courses.dart';
import 'package:patino1/page/courses/widgets/content_card_course/content_card_course.dart';
import 'package:patino1/page/courses/widgets/description_course_widget/description_course_widget.dart';
import 'package:patino1/page/courses/widgets/title_course_widget/title_course_widget.dart';

class CoursesPage extends StatefulWidget {
  CoursesPage({Key key}) : super(key: key);

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends ModularState<CoursesPage, CoursesController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      return Scaffold(
          appBar: AppBarCourses(),
          body: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(gradient: AppGradients.linear),
              child: ContentCardCourse()));
    });
  }
}
