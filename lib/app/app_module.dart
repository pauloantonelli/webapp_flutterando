import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutterando/app/app_widget.dart';
import 'package:flutterando/app/modules/home/home_module.dart';

import 'shared/shared_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind((inject) => SharedModule()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
