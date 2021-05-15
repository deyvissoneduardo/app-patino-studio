import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/page/Init/controller/init_controller.dart';
import 'package:patino1/page/Init/init_module.dart';
import 'package:patino1/page/Init/init_page.dart';
import 'package:patino1/page/courses/controller/courses_controller.dart';
import 'package:patino1/page/courses/courses_module.dart';
import 'package:patino1/page/home/controller/home_controller.dart';
import 'package:patino1/page/home/home_module.dart';
import 'package:patino1/page/info/controller/info_controller.dart';
import 'package:patino1/page/info/info_module.dart';
import 'package:patino1/page/services/controller/service_controller.dart';
import 'package:patino1/page/services/service_module.dart';
import 'package:patino1/page/splash_screen/controller/splash_screen_controller.dart';
import 'package:patino1/page/splash_screen/splash_screen_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashScreenController()),
        Bind((i) => HomeController()),
        Bind((i) => InfoController()),
        Bind((i) => CoursesController()),
        Bind((i) => ServiceController()),
        Bind((i) => InitController())
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: SplashScreenModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/init', module: InitModule()),
        ModuleRoute('/service', module: ServiceModule()),
        ModuleRoute('/couses', module: CoursesModule()),
        ModuleRoute('/info', module: InfoModule()),
      ];
}
