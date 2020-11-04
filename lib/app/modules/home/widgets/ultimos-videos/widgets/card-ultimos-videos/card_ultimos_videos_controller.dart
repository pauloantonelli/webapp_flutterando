import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'card_ultimos_videos_controller.g.dart';

@Injectable()
class CardUltimosVideosController = _CardUltimosVideosControllerBase
    with _$CardUltimosVideosController;

abstract class _CardUltimosVideosControllerBase with Store {
  final ScreenSize screen;
  final double larguraDefault = 200.0;

  _CardUltimosVideosControllerBase(this.screen);
}
