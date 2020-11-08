import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/shapes/cover_home_ondulation.dart';

import 'co_organizadores_controller.dart';

class CoOrganizadoresWidget extends StatefulWidget {
  @override
  CoOrganizadoresWidgetState createState() => CoOrganizadoresWidgetState();
}

class CoOrganizadoresWidgetState
    extends ModularState<CoOrganizadoresWidget, CoOrganizadoresController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
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
                    'Co-organizadores',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 46.0),
                    child:
                        Text('Conheça a turma que faz a comunidade acontecer',
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
                        alignment: (controller.screen
                                    .isMobile(context: context) ||
                                controller.screen.isTablet(context: context))
                            ? WrapAlignment.center
                            : WrapAlignment.start,
                        children: controller.generateCoOrganizers(),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
          Container(
            color: Color(0xff0b0f13).withOpacity(0.9),
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 100),
              painter: CoverHomeOndulation(),
            ),
          ),
        ],
      ),
    );
  }
}
