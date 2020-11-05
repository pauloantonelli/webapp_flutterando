import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/shapes/dash_border.dart';

import 'card_my_package_controller.dart';

class CardMyPackageWidget extends StatefulWidget {
  @override
  _CardMyPackageWidgetState createState() => _CardMyPackageWidgetState();
}

class _CardMyPackageWidgetState
    extends ModularState<CardMyPackageWidget, CardMyPackageController> {
  @override
  Widget build(BuildContext context) {
    final double larguraDefault =
        (controller.screen.isMobile(context: context) ||
                controller.screen.isTablet(context: context))
            ? 265.0
            : 190.0;
    return FlatButton(
      padding: EdgeInsets.all(0.0),
      onPressed: () {},
      child: Container(
        width: larguraDefault,
        height: 350.0,
        margin: (controller.screen.isMobile(context: context) ||
                controller.screen.isTablet(context: context))
            ? EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 30.0)
            : EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 30.0),
        child: CustomPaint(
          foregroundPainter:
              DashBorder(color: Colors.grey, strokeWidth: 2.0, gap: 15.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            decoration: BoxDecoration(
              color: Color(0xff121920),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: DefaultTextStyle(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Your Package',
                    ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    child: Image.asset('assets/box.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
