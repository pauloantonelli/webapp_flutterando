import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card-co-organizadores_controller.g.dart';

@Injectable(singleton: true)
class CardCoOrganizadoresController = _CardCoOrganizadoresControllerBase
    with _$CardCoOrganizadoresController;

abstract class _CardCoOrganizadoresControllerBase with Store {
  final ScreenSize screen;

  _CardCoOrganizadoresControllerBase(this.screen);
}
