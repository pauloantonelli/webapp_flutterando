import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'logo_parceiros_controller.g.dart';

@Injectable()
class LogoParceirosController = _LogoParceirosControllerBase
    with _$LogoParceirosController;

abstract class _LogoParceirosControllerBase with Store {}
