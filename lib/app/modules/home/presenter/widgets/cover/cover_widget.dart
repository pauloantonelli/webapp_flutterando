import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/shapes/cover_home_ondulation.dart';

import 'cover_controller.dart';

class CoverWidget extends StatefulWidget {
  @override
  _CoverWidgetState createState() => _CoverWidgetState();
}

class _CoverWidgetState extends ModularState<CoverWidget, CoverController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            width: 200.0,
            child: Container(
                child: Image.asset(
              'assets/flutterando_logo.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 3,
            )),
          ),
          Container(
            width: 600.0,
            padding: controller.screen.isMobile(context: context) ||
                    controller.screen.isTablet(context: context) ||
                    controller.screen.isWatch(context: context)
                ? EdgeInsets.symmetric(horizontal: 30.0)
                : EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width / 25,
                  ),
                  child: Text(
                    'A maior comunidade de Flutter do Brasil!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: controller.screen
                                    .isMobile(context: context) ||
                                controller.screen.isTablet(context: context) ||
                                controller.screen.isWatch(context: context)
                            ? 30.0
                            : MediaQuery.of(context).size.width / 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 20,
                  ),
                  child: Text(
                    'A Flutterando é a maior comunidade de Flutter no Brasil. Penso em Flutter, pensou na Flutterando. Faça parte da nossa comunidade!',
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Observer(builder: (_) {
                  return Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 25,
                    ),
                    child: Container(
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: controller.generateIconesRedesSociaisWidget(),
                      ),
                    ),
                  );
                }),
              ],
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
