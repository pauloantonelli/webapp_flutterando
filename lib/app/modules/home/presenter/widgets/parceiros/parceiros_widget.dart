import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/shapes/cover_home_ondulation.dart';

import 'parceiros_controller.dart';
import 'widgets/botao-quer-ser-parceiro/botao_quer_ser_parceiro_widget.dart';

class ParceirosWidget extends StatefulWidget {
  @override
  _ParceirosWidgetState createState() => _ParceirosWidgetState();
}

class _ParceirosWidgetState
    extends ModularState<ParceirosWidget, ParceirosController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff0b0f13).withOpacity(0.9),
      ),
      child: Column(
        children: [
          Container(
            color: Color(0xff0b0f13).withOpacity(0.9),
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 100),
              painter: CoverHomeOndulation(),
            ),
          ),
          Container(
            height: 500.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Parceiros',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  child:
                      Text('Essas são as empresas que apoiam nossa comunidade',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w300,
                          )),
                ),
                Observer(builder: (_) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200.0,
                    margin: (controller.screen.isMobile(context: context) ||
                            controller.screen.isTablet(context: context) ||
                            controller.screen.isWatch(context: context))
                        ? EdgeInsets.only(top: 40.0)
                        : EdgeInsets.only(top: 60.0),
                    child: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        ...controller.generateCardPacotesBrasileirosWidget(),
                        BotaoQuerSerParceiroWidget()
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
