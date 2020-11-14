import 'package:flutter/material.dart';
import 'package:flutterando/app/shared/utils/screen-size.dart';

class InputCardWidget extends StatefulWidget {
  final ScreenSize screen;
  final String label;
  final TextEditingController controller;
  final bool enabled;

  const InputCardWidget({
    Key key,
    @required this.screen,
    @required this.label,
    @required this.controller,
    this.enabled = true,
  }) : super(key: key);
  @override
  _InputCardWidgetState createState() => _InputCardWidgetState();
}

class _InputCardWidgetState extends State<InputCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: widget.screen.atualWidth(context: context),
            height: 20.0,
            child: Text(
              widget.label,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Builder(builder: (_) {
            if (widget.enabled == false) {
              Container(
                height: 30.0,
                decoration: BoxDecoration(
                  color: Color(0xff232a3a),
                ),
              );
            }
            return Container(
              height: 30.0,
              child: TextFormField(
                enabled: widget.enabled,
                controller: widget.controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 30.0)),
                style: TextStyle(
                    height: 2.0,
                    color: Colors.white,
                    backgroundColor: Color(0xff232a3a)),
              ),
            );
          }),
        ],
      ),
    );
  }
}
