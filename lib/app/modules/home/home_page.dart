import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/shapes/cover_home_ondulation.dart';
import 'package:flutterando/app/shared/top-bar/top_bar_widget.dart';
import 'home_controller.dart';
import 'widgets/cover/cover_widget.dart';
import 'widgets/icones-redes-sociais/icones_redes_sociais_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090b0d),
      body: SingleChildScrollView(
        physics: ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TopBarWidget(),
              CoverWidget(),
              Container(
                  color: Color(0xff0b0f13).withOpacity(0.9),
                  width: MediaQuery.of(context).size.width,
                  height: 400.0)
            ],
          ),
        ),
      ),
    );
  }
}
