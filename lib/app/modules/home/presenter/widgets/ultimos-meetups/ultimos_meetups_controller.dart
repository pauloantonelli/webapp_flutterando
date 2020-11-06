import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'ultimos_meetups_controller.g.dart';

@Injectable()
class UltimosMeetupsController = _UltimosMeetupsControllerBase
    with _$UltimosMeetupsController;

abstract class _UltimosMeetupsControllerBase with Store {
  final ScreenSize screen;

  _UltimosMeetupsControllerBase(this.screen);
}
