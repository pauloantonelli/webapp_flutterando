import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'footer_controller.g.dart';

@Injectable()
class FooterController = _FooterControllerBase with _$FooterController;

abstract class _FooterControllerBase with Store {
  final ScreenSize screen;
  double larguraDefaut = 350.0;
  _FooterControllerBase(this.screen);
}
