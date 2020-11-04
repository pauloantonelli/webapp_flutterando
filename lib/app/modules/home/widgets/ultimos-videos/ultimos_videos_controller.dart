import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'ultimos_videos_controller.g.dart';

@Injectable()
class UltimosVideosController = _UltimosVideosControllerBase
    with _$UltimosVideosController;

abstract class _UltimosVideosControllerBase with Store {
  final ScreenSize screen;

  _UltimosVideosControllerBase(this.screen);
}
