import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'field_form_contato_controller.dart';

class FieldFormContatoWidget extends StatefulWidget {
  final bool inputAutofocus;
  final String title;
  final int minInputLines;
  final int maxInputLines;

  const FieldFormContatoWidget(
      {Key key,
      this.inputAutofocus = false,
      this.title = '',
      this.minInputLines = 1,
      this.maxInputLines = 1})
      : super(key: key);
  @override
  _FieldFormContatoWidgetState createState() => _FieldFormContatoWidgetState();
}

class _FieldFormContatoWidgetState
    extends ModularState<FieldFormContatoWidget, FieldFormContatoController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 14),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 25.0),
              child: Text(
                widget.title,
              ),
            ),
            Container(
              height: 40.0 + widget.minInputLines + widget.maxInputLines * pi,
              margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
              padding: EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                  color: Color(0xff232a3a),
                  borderRadius: BorderRadius.circular(5.0)),
              child: TextFormField(
                autofocus: widget.inputAutofocus,
                minLines: widget.minInputLines,
                maxLines: widget.maxInputLines,
                scrollPadding: EdgeInsets.all(0.0),
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
