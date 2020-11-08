import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/co_organizer_entity.dart';

import 'card-co-organizadores_controller.dart';

class CardCoOrganizadoresWidget extends StatefulWidget {
  final CoOrganizerEntity model;

  const CardCoOrganizadoresWidget({Key key, this.model}) : super(key: key);
  @override
  _CardCoOrganizadoresWidgetState createState() =>
      _CardCoOrganizadoresWidgetState();
}

class _CardCoOrganizadoresWidgetState extends ModularState<
    CardCoOrganizadoresWidget, CardCoOrganizadoresController> {
  @override
  Widget build(BuildContext context) {
    final double larguraDefault =
        (controller.screen.isMobile(context: context) ||
                controller.screen.isTablet(context: context))
            ? 265.0
            : 150.0;
    return Container(
      width: larguraDefault,
      margin: (controller.screen.isMobile(context: context) ||
              controller.screen.isTablet(context: context))
          ? EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 30.0)
          : EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 30.0),
      child: Column(
        children: [
          Container(
            width: larguraDefault,
            height: 300.0,
            decoration: BoxDecoration(
              color: Color(0xff121920),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 90.0,
                  height: 90.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(widget.model.avatarSrcImage),
                    radius: 20.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text(
                          widget.model.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          widget.model.title,
                          style: TextStyle(color: Colors.white, fontSize: 11.0),
                        ),
                      ),
                      Container(
                        width: 35.0,
                        height: 35.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                        ),
                        child: Image.asset(
                          'assets/linkedin-logo-branco.png',
                          width: 20.0,
                          height: 20.0,
                        ),
                      )
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
