import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'co_organizadores_controller.g.dart';

@Injectable(singleton: false)
class CoOrganizadoresController = _CoOrganizadoresControllerBase
    with _$CoOrganizadoresController;

abstract class _CoOrganizadoresControllerBase with Store {
  final ScreenSize screen;

  _CoOrganizadoresControllerBase(this.screen);
}
