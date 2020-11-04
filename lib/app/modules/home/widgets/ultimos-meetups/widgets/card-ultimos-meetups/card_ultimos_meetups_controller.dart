import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card_ultimos_meetups_controller.g.dart';

@Injectable()
class CardUltimosMeetupsController = _CardUltimosMeetupsControllerBase
    with _$CardUltimosMeetupsController;

abstract class _CardUltimosMeetupsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
