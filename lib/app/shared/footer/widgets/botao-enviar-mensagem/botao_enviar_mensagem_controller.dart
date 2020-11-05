import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'botao_enviar_mensagem_controller.g.dart';

@Injectable(singleton: false)
class BotaoEnviarMensagemController = _BotaoEnviarMensagemControllerBase
    with _$BotaoEnviarMensagemController;

abstract class _BotaoEnviarMensagemControllerBase with Store {
  final ScreenSize screen;

  _BotaoEnviarMensagemControllerBase(this.screen);
}
