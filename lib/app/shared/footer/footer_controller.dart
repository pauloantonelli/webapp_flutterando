import 'package:flutter/material.dart';
import 'package:flutterando/app/shared/social-icon-button/social_icon_button_widget.dart';
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
  List<Map<String, String>> socialIconList = [
    {
      'icon': 'assets/redes_sociais/linkedin-logo-branco.png',
      'link': 'https://www.linkedin.com/company/aflutterando/'
    }
  ];

  List<Widget> generateSocialIconButtonWidget() {
    return socialIconList
        .map((socialIcon) => SocialIconButtonWidget(
              width: 30.0,
              heigth: 30.0,
              padding: 8.0,
              borderRadius: 3.0,
              imageAssetSrc: socialIcon['icon'],
              link: socialIcon['link'],
              cursor: true,
            ))
        .toList();
  }
}
