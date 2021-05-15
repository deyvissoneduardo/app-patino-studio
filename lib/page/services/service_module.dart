import 'package:flutter_modular/flutter_modular.dart';
import 'package:patino1/page/services/controller/service_controller.dart';
import 'package:patino1/page/services/service_page.dart';

class ServiceModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ServiceController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/service', child: (_, __) => ServicePage())
  ];
}
