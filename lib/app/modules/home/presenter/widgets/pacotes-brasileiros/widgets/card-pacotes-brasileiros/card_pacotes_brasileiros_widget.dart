import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';

import 'card_pacotes_brasileiros_controller.dart';

class CardPacotesBrasileirosWidget extends StatefulWidget {
  final BrasilianPackagesEntity model;

  const CardPacotesBrasileirosWidget({Key key, this.model}) : super(key: key);
  @override
  _CardPacotesBrasileirosWidgetState createState() =>
      _CardPacotesBrasileirosWidgetState();
}

class _CardPacotesBrasileirosWidgetState extends ModularState<
    CardPacotesBrasileirosWidget, CardPacotesBrasileirosController> {
  @override
  Widget build(BuildContext context) {
    controller.larguraDefault = (controller.screen.isMobile(context: context) ||
            controller.screen.isTablet(context: context))
        ? 265.0
        : 190.0;
    return Container(
      width: controller.larguraDefault,
      height: 350.0,
      margin: (controller.screen.isMobile(context: context) ||
              controller.screen.isTablet(context: context))
          ? EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 30.0)
          : EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 30.0),
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      decoration: BoxDecoration(
        color: Color(0xff121920),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: DefaultTextStyle(
        style: TextStyle(
            color: Colors.white, fontSize: 11.0, fontWeight: FontWeight.w300),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              child: Image.asset('assets/box.png'),
            ),
            Container(
              child: Text(
                widget.model.packageName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              child: Text(
                widget.model.developerName,
              ),
            ),
            Container(
              child: Text(
                widget.model.version,
              ),
            ),
            Container(
              height: 80.0,
              child: SingleChildScrollView(
                child: Text(
                  widget.model.description,
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
            Container(
              height: 35.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: FlatButton(
                onPressed: () {
                  controller.launchUrl(url: widget.model.externalLink);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 14.0,
                      height: 14.0,
                      child: Image.asset(
                        'assets/external-link.png',
                        width: 11.0,
                        height: 11.0,
                      ),
                    ),
                    SizedBox(width: 12.0),
                    Container(
                      child: Text(
                        'Acessar',
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
