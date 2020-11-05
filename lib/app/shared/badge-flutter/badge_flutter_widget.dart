import 'package:flutter/material.dart';

class BadgeFlutterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Feito com"),
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            Text("e Flutter Web"),
          ],
        ),
      ),
    );
  }
}
