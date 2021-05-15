import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/page/Init/controller/init_controller.dart';
import 'package:patino1/page/Init/init_page.dart';

class InitModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InitController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/init', child: (_, __) => InitPage())
  ];
}
