import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_cases_entity.dart';
import 'package:flutterando/app/shared/image-network/image_network_widget.dart';

import 'card_cases_brasileiros_controller.dart';

class CardCasesBrasileirosWidget extends StatefulWidget {
  final BrasilianCasesEntity model;

  const CardCasesBrasileirosWidget({Key key, this.model}) : super(key: key);
  @override
  _CardCasesBrasileirosWidgetState createState() =>
      _CardCasesBrasileirosWidgetState();
}

class _CardCasesBrasileirosWidgetState extends ModularState<
    CardCasesBrasileirosWidget, CardCasesBrasileirosController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: controller.larguraDefault,
      margin: EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 30.0),
      decoration: BoxDecoration(
        color: Color(0xff121920),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: controller.larguraDefault,
            height: 170.0,
            margin: EdgeInsets.only(bottom: 5.0),
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
                  srcImage: widget.model.srcImage, fitStyle: BoxFit.fill),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Container(
                  width: controller.larguraDefault,
                  margin: EdgeInsets.symmetric(vertical: 20.0),
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
                  height: 40.0,
                  margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                  child: SingleChildScrollView(
                    child: Text(
                      widget.model.description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Container(
                  height: 35.0,
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: FlatButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 14.0,
                          height: 14.0,
                          child: Image.asset(
                            'assets/external-link.png',
                            width: 11.0,
                            height: 11.0,
                          ),
                        ),
                        SizedBox(width: 12.0),
                        Container(
                          child: Text(
                            'Ver mais',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
