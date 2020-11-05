import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'pacotes_brasileiros_controller.g.dart';

@Injectable()
class PacotesBrasileirosController = _PacotesBrasileirosControllerBase
    with _$PacotesBrasileirosController;

abstract class _PacotesBrasileirosControllerBase with Store {
  final ScreenSize screen;

  _PacotesBrasileirosControllerBase(this.screen);
}
