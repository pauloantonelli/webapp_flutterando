import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/shapes/cover_home_ondulation.dart';

import 'pacotes_brasileiros_controller.dart';
import 'widgets/card-my-package/card_my_package_widget.dart';
import 'widgets/card-pacotes-brasileiros/card_pacotes_brasileiros_widget.dart';

class PacotesBrasileirosWidget extends StatefulWidget {
  @override
  _PacotesBrasileirosWidgetState createState() =>
      _PacotesBrasileirosWidgetState();
}

class _PacotesBrasileirosWidgetState extends ModularState<
    PacotesBrasileirosWidget, PacotesBrasileirosController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
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
                crossAxisAlignment:
                    (controller.screen.isMobile(context: context) ||
                            controller.screen.isTablet(context: context))
                        ? CrossAxisAlignment.center
                        : CrossAxisAlignment.end,
                children: [
                  Container(
                      child: Text(
                    'Pacotes brasileiros',
                    textAlign: (controller.screen.isMobile(context: context) ||
                            controller.screen.isTablet(context: context))
                        ? TextAlign.center
                        : TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 46.0),
                    child: Text('Faça o download dos pacotes brasileiros',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        CardPacotesBrasileirosWidget(),
                        CardPacotesBrasileirosWidget(),
                        CardPacotesBrasileirosWidget(),
                        CardPacotesBrasileirosWidget(),
                        CardPacotesBrasileirosWidget(),
                        CardPacotesBrasileirosWidget(),
                        CardPacotesBrasileirosWidget(),
                        CardMyPackageWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Color(0xff0b0f13).withOpacity(0.9),
            child: Transform.rotate(
              angle: pi * 3,
              child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width, 100),
                painter: CoverHomeOndulation(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
