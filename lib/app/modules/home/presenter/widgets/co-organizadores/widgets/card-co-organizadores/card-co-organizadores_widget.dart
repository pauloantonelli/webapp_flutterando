import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'card-co-organizadores_controller.dart';

class CardCoOrganizadoresWidget extends StatefulWidget {
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
                    backgroundImage: NetworkImage(
                        'https://media-exp1.licdn.com/dms/image/C5603AQG_fAe78FavuA/profile-displayphoto-shrink_800_800/0?e=1609977600&v=beta&t=XtUs9Tn6Ug0swkE-56K-E-AI9pOpB__N2ZL-86vjQYs'),
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
                          'Jessica Mariane Pereira',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          'Co-organizer',
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
