import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/shared/footer/footer_widget.dart';
import 'package:flutterando/app/shared/top-bar/top_bar_widget.dart';
import 'home_controller.dart';
import './widgets/cases-brasileiros/cases_brasileiros_widget.dart';
import './widgets/co-organizadores/co_organizadores_widget.dart';
import './widgets/cover/cover_widget.dart';
import './widgets/pacotes-brasileiros/pacotes_brasileiros_widget.dart';
import './widgets/parceiros/parceiros_widget.dart';
import './widgets/ultimos-meetups/ultimos_meetups_widget.dart';
import './widgets/ultimos-videos/ultimos_videos_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090b0d),
      body: SingleChildScrollView(
        // physics: ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          children: [
            TopBarWidget(),
            CoverWidget(),
            UltimosMeetupsWidget(),
            UltimosVideosWidget(),
            CoOrganizadoresWidget(),
            PacotesBrasileirosWidget(),
            CasesBrasileirosWidget(),
            ParceirosWidget(),
            FooterWidget()
          ],
        ),
      ),
    );
  }
}
