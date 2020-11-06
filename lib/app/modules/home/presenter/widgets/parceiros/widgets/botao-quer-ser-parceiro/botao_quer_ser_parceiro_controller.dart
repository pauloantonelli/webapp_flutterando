import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'botao_quer_ser_parceiro_controller.g.dart';

@Injectable(singleton: false)
class BotaoQuerSerParceiroController = _BotaoQuerSerParceiroControllerBase
    with _$BotaoQuerSerParceiroController;

abstract class _BotaoQuerSerParceiroControllerBase with Store {
  final ScreenSize screen;
  double larguraDefaultBotaoQueroSerParceiro = 180.0;

  _BotaoQuerSerParceiroControllerBase(this.screen);
}
