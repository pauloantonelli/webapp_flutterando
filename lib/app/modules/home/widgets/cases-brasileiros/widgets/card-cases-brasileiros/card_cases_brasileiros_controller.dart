import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card_cases_brasileiros_controller.g.dart';

@Injectable(singleton: false)
class CardCasesBrasileirosController = _CardCasesBrasileirosControllerBase
    with _$CardCasesBrasileirosController;

abstract class _CardCasesBrasileirosControllerBase with Store {
  final ScreenSize screen;
  double larguraDefault = 265.0;

  _CardCasesBrasileirosControllerBase(this.screen);
}
