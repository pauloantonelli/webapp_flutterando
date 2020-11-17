import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/shapes/cover_home_ondulation.dart';

import 'ultimos_videos_controller.dart';

class UltimosVideosWidget extends StatefulWidget {
  @override
  _UltimosMeetupsWidgetState createState() => _UltimosMeetupsWidgetState();
}

class _UltimosMeetupsWidgetState
    extends ModularState<UltimosVideosWidget, UltimosVideosController> {
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
                    'Últimos vídeos do canal',
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
                    child:
                        Text('fique por dentro do nosso conteúdo mais recente',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.w300,
                            )),
                  ),
                  Observer(builder: (_) {
                    return Container(
                      width: controller.screen.atualWidth(context: context),
                      child: Wrap(
                        alignment: (controller.screen
                                    .isDesktopXl(context: context) ||
                                controller.screen.isDesktopLg(context: context))
                            ? WrapAlignment.end
                            : WrapAlignment.center,
                        children: controller.generateCardUltimosVideosWidget(),
                      ),
                    );
                  }),
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
