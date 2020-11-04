import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'icones_redes_sociais_controller.g.dart';

@Injectable(singleton: false)
class IconesRedesSociaisController = _IconesRedesSociaisControllerBase
    with _$IconesRedesSociaisController;

abstract class _IconesRedesSociaisControllerBase with Store {}
