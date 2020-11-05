import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'badge_flutter_controller.g.dart';

@Injectable()
class BadgeFlutterController = _BadgeFlutterControllerBase
    with _$BadgeFlutterController;

abstract class _BadgeFlutterControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
