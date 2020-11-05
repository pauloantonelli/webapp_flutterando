import 'widgets/cases-brasileiros/cases_brasileiros_controller.dart';
import 'widgets/cases-brasileiros/widgets/card-cases-brasileiros/card_cases_brasileiros_controller.dart';
import 'widgets/co-organizadores/co_organizadores_controller.dart';
import 'widgets/co-organizadores/widgets/card-co-organizadores/card-co-organizadores_controller.dart';
import 'widgets/cover/widgets/icones-redes-sociais/icones_redes_sociais_controller.dart';
import 'widgets/pacotes-brasileiros/pacotes_brasileiros_controller.dart';
import 'widgets/pacotes-brasileiros/widgets/card-my-package/card_my_package_controller.dart';
import 'widgets/pacotes-brasileiros/widgets/card-pacotes-brasileiros/card_pacotes_brasileiros_controller.dart';
import 'widgets/ultimos-meetups/widgets/card-ultimos-meetups/card_ultimos_meetups_controller.dart';
import 'widgets/cover/cover_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';
import 'widgets/ultimos-meetups/ultimos_meetups_controller.dart';
import 'widgets/ultimos-videos/ultimos_videos_controller.dart';
import 'widgets/ultimos-videos/widgets/card-ultimos-videos/card_ultimos_videos_controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HomeController,
        $CoverController,
        $IconesRedesSociaisController,
        $UltimosMeetupsController,
        $CardUltimosMeetupsController,
        $CardUltimosVideosController,
        $UltimosVideosController,
        $CoOrganizadoresController,
        $CardCoOrganizadoresController,
        $PacotesBrasileirosController,
        $CardPacotesBrasileirosController,
        $CardMyPackageController,
        $CasesBrasileirosController,
        $CardCasesBrasileirosController
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
