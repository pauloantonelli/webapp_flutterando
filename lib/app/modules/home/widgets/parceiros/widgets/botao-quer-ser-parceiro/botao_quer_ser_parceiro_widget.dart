import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'botao_quer_ser_parceiro_controller.dart';

class BotaoQuerSerParceiroWidget extends StatefulWidget {
  @override
  _BotaoQuerSerParceiroWidgetState createState() =>
      _BotaoQuerSerParceiroWidgetState();
}

class _BotaoQuerSerParceiroWidgetState extends ModularState<
    BotaoQuerSerParceiroWidget, BotaoQuerSerParceiroController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (controller.screen.isMobile(context: context) ||
              controller.screen.isTablet(context: context) ||
              controller.screen.isWatch(context: context))
          ? controller.screen.atualScreenWidth(context: context) - 100.0
          : controller.larguraDefaultBotaoQueroSerParceiro,
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
            'Quero ser parceiro',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ),
      ),
    );
  }
}
