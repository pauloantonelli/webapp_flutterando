import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'cases_brasileiros_controller.dart';
import 'widgets/card-cases-brasileiros/card_cases_brasileiros_widget.dart';

class CasesBrasileirosWidget extends StatefulWidget {
  @override
  CasesBrasileirosWidgetState createState() => CasesBrasileirosWidgetState();
}

class CasesBrasileirosWidgetState
    extends ModularState<CasesBrasileirosWidget, CasesBrasileirosController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff090b0d).withOpacity(0.9),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(15.0, 65.0, 15.0, 0.0),
      child: Container(
        margin: controller.screen.isDesktopXl(context: context)
            ? EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 6)
            : EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Text(
              'Cases brasileiros',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            )),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 46.0),
              child: Text(
                  'Veja como empresas brasileiras estão tendo sucesso com o Flutter em suas aplicações',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w300,
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                children: [
                  CardCasesBrasileirosWidget(),
                  CardCasesBrasileirosWidget(),
                  CardCasesBrasileirosWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
