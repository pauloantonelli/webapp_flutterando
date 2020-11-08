import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/social_members_numbers_entity.dart';
import 'package:flutterando/app/shared/shapes/triangule_custom_shape.dart';
import 'package:flutterando/app/shared/social-icon-button/social_icon_button_widget.dart';
import './icones_redes_sociais_controller.dart';

class IconesRedesSociaisWidget extends StatefulWidget {
  final SocialMembersNumbersEntity model;

  const IconesRedesSociaisWidget({Key key, @required this.model})
      : super(key: key);
  @override
  _IconesRedesSociaisWidgetState createState() =>
      _IconesRedesSociaisWidgetState();
}

class _IconesRedesSociaisWidgetState extends ModularState<
    IconesRedesSociaisWidget, IconesRedesSociaisController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135.0,
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          SocialIconButtonWidget(
            imageAssetSrc: widget.model.srcLogo,
          ),
          CustomPaint(
            size: Size(15, 15),
            painter: TrianguleCustomShape(),
          ),
          Container(
            width: 75.0,
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
            child: Text(
              '${widget.model.totalMembers}k',
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
