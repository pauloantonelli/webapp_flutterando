import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card_my_package_controller.g.dart';

@Injectable(singleton: false)
class CardMyPackageController = _CardMyPackageControllerBase
    with _$CardMyPackageController;

abstract class _CardMyPackageControllerBase with Store {
  final ScreenSize screen;
  final double larguraDefault = 200.0;

  _CardMyPackageControllerBase(this.screen);
}
