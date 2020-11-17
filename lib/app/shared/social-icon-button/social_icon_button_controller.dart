import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

part 'social_icon_button_controller.g.dart';

@Injectable(singleton: false)
class SocialIconButtonController = _SocialIconButtonControllerBase
    with _$SocialIconButtonController;

abstract class _SocialIconButtonControllerBase with Store {
  launchUrl({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
