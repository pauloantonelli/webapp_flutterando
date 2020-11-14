import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'botao_enviar_mensagem_controller.dart';

class BotaoEnviarMensagemWidget extends StatefulWidget {
  @override
  _BotaoEnviarMensagemWidgetState createState() =>
      _BotaoEnviarMensagemWidgetState();
}

class _BotaoEnviarMensagemWidgetState extends ModularState<
    BotaoEnviarMensagemWidget, BotaoEnviarMensagemController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: controller.screen.atualWidth(context: context),
      height: 50.0,
      margin: (controller.screen.isMobile(context: context) ||
              controller.screen.isTablet(context: context) ||
              controller.screen.isWatch(context: context))
          ? EdgeInsets.only(top: 40.0)
          : EdgeInsets.only(top: 0.0),
      decoration: BoxDecoration(
        color: Colors.blue[800],
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: FlatButton(
        onPressed: () {},
        child: Container(
          child: Text(
            'Enviar',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
      ),
    );
  }
}
