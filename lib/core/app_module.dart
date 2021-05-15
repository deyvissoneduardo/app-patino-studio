import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/page/courses/controller/courses_controller.dart';
import 'package:patino1/page/courses/courses_module.dart';
import 'package:patino1/page/home/controller/home_controller.dart';
import 'package:patino1/page/home/home_module.dart';
import 'package:patino1/page/info/controller/info_controller.dart';
import 'package:patino1/page/info/info_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController()),
        Bind((i) => InfoController()),
        Bind((i) => CoursesController())
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/couses', module: CoursesModule()),
        ModuleRoute('/info', module: InfoModule()),
      ];
}
