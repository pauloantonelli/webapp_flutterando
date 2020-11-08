import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'ultimos_meetups_controller.dart';

class UltimosMeetupsWidget extends StatefulWidget {
  @override
  _UltimosMeetupsWidgetState createState() => _UltimosMeetupsWidgetState();
}

class _UltimosMeetupsWidgetState
    extends ModularState<UltimosMeetupsWidget, UltimosMeetupsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff0b0f13).withOpacity(0.9),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(15.0, 65.0, 15.0, 0.0),
      child: Container(
        margin: controller.screen.isDesktopXl(context: context)
            ? EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 6)
            : EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(
              'Últimos meetups',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            )),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 46.0),
              child: Text('fique por dentro de nossos últimos encontros',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  )),
            ),
            Observer(builder: (_) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Wrap(
                  children: controller.generateCardUltimosMeetupsWidget(),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
