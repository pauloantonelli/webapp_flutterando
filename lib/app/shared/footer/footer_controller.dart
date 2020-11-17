import 'package:flutter/material.dart';
import 'package:flutterando/app/shared/utils/screen-size.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

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
        .map(
          (socialIcon) => FlatButton(
            onPressed: () {
              launchUrl(url: socialIcon['link']);
            },
            child: Container(
              width: 30.0,
              height: 30.0,
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(3.0)),
              child: Image.asset(socialIcon['icon']),
            ),
          ),
        )
        .toList();
  }

  launchUrl({String url}) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
