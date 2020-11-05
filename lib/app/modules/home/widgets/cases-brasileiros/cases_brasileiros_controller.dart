import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cases_brasileiros_controller.g.dart';

@Injectable()
class CasesBrasileirosController = _CasesBrasileirosControllerBase
    with _$CasesBrasileirosController;

abstract class _CasesBrasileirosControllerBase with Store {
  final ScreenSize screen;

  _CasesBrasileirosControllerBase(this.screen);
}
