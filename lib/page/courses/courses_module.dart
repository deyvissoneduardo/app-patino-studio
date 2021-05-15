import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/page/courses/controller/courses_controller.dart';
import 'package:patino1/page/courses/courses_page.dart';

class CoursesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CoursesController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/courses', child: (_, __) => CoursesPage())
  ];
}
