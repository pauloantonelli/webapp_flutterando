import 'package:flutterando/app/shared/image-network/image_network_controller.dart';

import 'shared/badge-flutter/badge_flutter_controller.dart';
import 'shared/footer/widgets/botao-enviar-mensagem/botao_enviar_mensagem_controller.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutterando/app/app_widget.dart';
import 'package:flutterando/app/modules/home/home_module.dart';

import 'shared/footer/footer_controller.dart';
import 'shared/footer/widgets/field-form-contato/field_form_contato_controller.dart';
import 'shared/top-bar/top_bar_controller.dart';
import 'shared/utils/screen-size.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $BadgeFlutterController,
        $AppController,
        $TopBarController,
        $FooterController,
        $FieldFormContatoController,
        $BotaoEnviarMensagemController,
        $ImageNetworkController,
        $ScreenSize
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
