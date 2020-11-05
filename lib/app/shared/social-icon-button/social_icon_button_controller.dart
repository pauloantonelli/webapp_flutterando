import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'social_icon_button_controller.g.dart';

@Injectable()
class SocialIconButtonController = _SocialIconButtonControllerBase
    with _$SocialIconButtonController;

abstract class _SocialIconButtonControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
