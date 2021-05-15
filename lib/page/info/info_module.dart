import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/page/info/controller/info_controller.dart';
import 'package:patino1/page/info/info_page.dart';

class InfoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InfoController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/info', child: (_, __) => InfoPage())
  ];
}
