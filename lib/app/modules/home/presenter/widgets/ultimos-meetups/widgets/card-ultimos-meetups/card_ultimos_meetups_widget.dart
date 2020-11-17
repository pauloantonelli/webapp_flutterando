import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_meetups_entity.dart';
import 'package:flutterando/app/shared/image-network/image_network_widget.dart';

import 'card_ultimos_meetups_controller.dart';

class CardUltimosMeetupsWidget extends StatefulWidget {
  final LastMeetUpsEntity model;

  const CardUltimosMeetupsWidget({Key key, @required this.model})
      : super(key: key);
  @override
  _CardUltimosMeetupsWidgetState createState() =>
      _CardUltimosMeetupsWidgetState();
}

class _CardUltimosMeetupsWidgetState extends ModularState<
    CardUltimosMeetupsWidget, CardUltimosMeetupsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: controller.larguraDefault,
      margin: (controller.screen.isMobile(context: context) ||
              controller.screen.isWatch(context: context))
          ? EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0)
          : EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 30.0),
      child: FlatButton(
        onPressed: () {
          controller.launchUrl(url: widget.model.externalLink);
        },
        padding: EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: controller.larguraDefault,
              height: 170.0,
              decoration: BoxDecoration(
                color: Color(0xff090b0d),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                width: controller.larguraDefault,
                height: 170.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: ImageNetworkWidget(
                  srcImage: widget.model.cardSrcImage,
                  fitStyle: BoxFit.fill,
                  color: Colors.white70,
                  colorBlendMode: BlendMode.multiply,
                ),
              ),
            ),
            Container(
              width: controller.larguraDefault,
              margin: EdgeInsets.only(top: 25.0),
              child: Text(
                widget.model.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              width: controller.larguraDefault,
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                widget.model.subtitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
