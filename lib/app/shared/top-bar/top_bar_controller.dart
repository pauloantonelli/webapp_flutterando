import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'top_bar_controller.g.dart';

@Injectable()
class TopBarController = _TopBarControllerBase with _$TopBarController;

abstract class _TopBarControllerBase with Store {
  final ScreenSize screen;

  _TopBarControllerBase(this.screen);
}
