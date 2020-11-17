import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

part 'card_ultimos_videos_controller.g.dart';

@Injectable(singleton: false)
class CardUltimosVideosController = _CardUltimosVideosControllerBase
    with _$CardUltimosVideosController;

abstract class _CardUltimosVideosControllerBase with Store {
  final ScreenSize screen;
  final double larguraDefault = 265.0;

  _CardUltimosVideosControllerBase(this.screen);

  launchUrl({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
