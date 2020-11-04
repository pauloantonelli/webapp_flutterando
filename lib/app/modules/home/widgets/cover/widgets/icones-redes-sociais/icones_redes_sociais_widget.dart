import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/shapes/triangule_custom_shape.dart';
import './icones_redes_sociais_controller.dart';

class IconesRedesSociaisWidget extends StatefulWidget {
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
          Container(
              width: 40.0,
              height: 40.0,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(right: 5.0),
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset('assets/flutterando_logo.png')),
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
              '29.9k',
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
