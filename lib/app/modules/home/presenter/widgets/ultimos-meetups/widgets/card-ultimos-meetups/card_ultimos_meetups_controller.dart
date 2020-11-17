import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

part 'card_ultimos_meetups_controller.g.dart';

@Injectable(singleton: false)
class CardUltimosMeetupsController = _CardUltimosMeetupsControllerBase
    with _$CardUltimosMeetupsController;

abstract class _CardUltimosMeetupsControllerBase with Store {
  final ScreenSize screen;
  double larguraDefault = 265.0;

  _CardUltimosMeetupsControllerBase(this.screen);

  launchUrl({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
