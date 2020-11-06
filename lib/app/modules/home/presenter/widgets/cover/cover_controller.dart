import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'cover_controller.g.dart';

@Injectable()
class CoverController = _CoverControllerBase with _$CoverController;

abstract class _CoverControllerBase with Store {
  final ScreenSize screen;

  _CoverControllerBase(this.screen);
}
