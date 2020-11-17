import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_videos_channel_entity.dart';
import 'package:flutterando/app/shared/image-network/image_network_widget.dart';
import 'package:flutterando/app/shared/shapes/triangule_custom_shape.dart';

import 'card_ultimos_videos_controller.dart';

class CardUltimosVideosWidget extends StatefulWidget {
  final LastVideosChannelEntity model;

  const CardUltimosVideosWidget({Key key, @required this.model})
      : super(key: key);

  @override
  _CardUltimosVideosWidgetState createState() =>
      _CardUltimosVideosWidgetState();
}

class _CardUltimosVideosWidgetState
    extends ModularState<CardUltimosVideosWidget, CardUltimosVideosController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: controller.larguraDefault,
      margin: controller.screen.isMobile(context: context) ||
              controller.screen.isWatch(context: context)
          ? EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0)
          : EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: controller.larguraDefault,
            height: controller.larguraDefault + 10.0,
            decoration: BoxDecoration(
              color: Color(0xff121920),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                FlatButton(
                  onPressed: () {
                    controller.launchUrl(url: widget.model.videoLink);
                  },
                  padding: EdgeInsets.all(0.0),
                  child: Container(
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
                            width: controller.larguraDefault,
                            height: controller.larguraDefault - 70.0,
                            child: ImageNetworkWidget(
                              srcImage: widget.model.cardSrcImage,
                              colorBlendMode: BlendMode.multiply,
                              color: Colors.blue[600],
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
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          widget.model.title,
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          widget.model.subtitle,
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
