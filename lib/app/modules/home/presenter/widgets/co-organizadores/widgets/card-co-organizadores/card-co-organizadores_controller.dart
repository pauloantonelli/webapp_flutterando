import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

part 'card-co-organizadores_controller.g.dart';

@Injectable(singleton: true)
class CardCoOrganizadoresController = _CardCoOrganizadoresControllerBase
    with _$CardCoOrganizadoresController;

abstract class _CardCoOrganizadoresControllerBase with Store {
  final ScreenSize screen;
  final double larguraDefault = 265.0;

  _CardCoOrganizadoresControllerBase(this.screen);

  launchUrl({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
