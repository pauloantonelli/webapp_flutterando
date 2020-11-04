import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'top_bar_controller.dart';

class TopBarWidget extends StatefulWidget {
  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends ModularState<TopBarWidget, TopBarController> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (_) {
      if (controller.screen.isDesktopLg(context: context) ||
          controller.screen.isDesktopXl(context: context)) {
        return Container(
          height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 30,
                    child: Image.asset('assets/flutterando_logo.png'),
                  ),
                  Container(
                    child: Text(
                      'Fluterrando',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width / 60),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: RaisedButton(
                      color: Colors.grey[900],
                      onPressed: () {},
                      child: Text(
                        'Forum',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: RaisedButton(
                      color: Colors.grey[900],
                      onPressed: () {},
                      child: Text(
                        'Links Úteis',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }
      if (controller.screen.isTablet(context: context) ||
          controller.screen.isMobile(context: context)) {
        return Container(
          height: 70.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 10,
                    child: Image.asset('assets/flutterando_logo.png'),
                  ),
                  Container(
                    child: Text(
                      'Fluterrando',
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(5.0)),
                    child: IconButton(
                      hoverColor: Colors.grey[900],
                      onPressed: () {},
                      icon: Icon(
                        Icons.forum,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(5.0)),
                    child: IconButton(
                      hoverColor: Colors.grey[900],
                      onPressed: () {},
                      icon: Icon(
                        Icons.link,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }
      return Container(
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 10,
                  child: Image.asset('assets/flutterando_logo.png'),
                ),
                Container(
                  child: Text(
                    'Fluterrando',
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    });
  }
}
