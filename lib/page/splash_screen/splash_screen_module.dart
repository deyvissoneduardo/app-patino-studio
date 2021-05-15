import 'package:flutter_modular/flutter_modular.dart';

import 'controller/splash_screen_controller.dart';
import 'splash_screen_page.dart';

class SplashScreenModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashScreenController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, __) => SplashScreenPage())
  ];
}
