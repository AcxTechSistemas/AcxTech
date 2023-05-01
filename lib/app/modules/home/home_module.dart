import 'package:acxtech/app/modules/home/controller/home_controller.dart';
import 'package:acxtech/app/modules/home/view/home_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton((i) => HomeController()),
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomeScreen()),
      ];
}
