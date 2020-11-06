import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'parceiros_controller.g.dart';

@Injectable()
class ParceirosController = _ParceirosControllerBase with _$ParceirosController;

abstract class _ParceirosControllerBase with Store {
  final ScreenSize screen;

  _ParceirosControllerBase(this.screen);
}
