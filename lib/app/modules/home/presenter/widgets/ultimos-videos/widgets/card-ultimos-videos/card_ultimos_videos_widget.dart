import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/shapes/triangule_custom_shape.dart';

import 'card_ultimos_videos_controller.dart';

class CardUltimosVideosWidget extends StatefulWidget {
  @override
  _CardUltimosVideosWidgetState createState() =>
      _CardUltimosVideosWidgetState();
}

class _CardUltimosVideosWidgetState
    extends ModularState<CardUltimosVideosWidget, CardUltimosVideosController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: controller.screen.isMobile(context: context) ||
              controller.screen.isTablet(context: context)
          ? 265.0
          : controller.larguraDefault,
      margin: EdgeInsets.fromLTRB(
          (controller.screen.isDesktopXl(context: context) ||
                  controller.screen.isDesktopLg(context: context))
              ? 14.0
              : 0.0,
          0.0,
          0.0,
          30.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: (controller.screen.isMobile(context: context) ||
                        controller.screen.isTablet(context: context))
                    ? 265.0
                    : controller.larguraDefault,
                height: controller.larguraDefault + 20.0,
                decoration: BoxDecoration(
                  color: Color(0xff121920),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: (controller.screen.isMobile(context: context) ||
                              controller.screen.isTablet(context: context))
                          ? 265.0
                          : controller.larguraDefault,
                      height: 225.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 0.0,
                            child: Container(
                              width: (controller.screen
                                          .isMobile(context: context) ||
                                      controller.screen
                                          .isTablet(context: context))
                                  ? 265.0
                                  : controller.larguraDefault,
                              height: controller.larguraDefault - 70.0,
                              child: Image.network(
                                'https://i.ytimg.com/vi/8-mnyze0gKw/maxresdefault.jpg',
                                fit: BoxFit.fill,
                                color: Colors.blue[600],
                                colorBlendMode: BlendMode.multiply,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 70.0,
                            child: Transform.rotate(
                              angle: pi / 3,
                              child: CustomPaint(
                                size: Size(15, 15),
                                painter: TrianguleCustomShape(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Curso de Flutter #30 - Conversor de Moedas Desenhando a View',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15.0),
                            child: Text(
                              'há 1 dia',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}