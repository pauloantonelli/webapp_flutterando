import 'package:flutter/material.dart';

class LogoParceirosWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 80.0,
      child: Image.asset(
        'assets/flutterando_logo.png',
        width: 70.0,
        height: 70.0,
      ),
    );
  }
}
