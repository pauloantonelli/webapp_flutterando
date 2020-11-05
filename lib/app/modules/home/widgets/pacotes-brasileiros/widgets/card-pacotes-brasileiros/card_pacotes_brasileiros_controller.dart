import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card_pacotes_brasileiros_controller.g.dart';

@Injectable(singleton: false)
class CardPacotesBrasileirosController = _CardPacotesBrasileirosControllerBase
    with _$CardPacotesBrasileirosController;

abstract class _CardPacotesBrasileirosControllerBase with Store {
  final ScreenSize screen;
  double larguraDefault = 200.0;

  _CardPacotesBrasileirosControllerBase(this.screen);
}
