import 'datasource/mock/get_social_members_numbers_datasource.dart';
import 'domain/usecase/get_social_members_numbers.dart';
import 'infra/respository/get_social_members_numbers_repository.dart';
import 'presenter/widgets/parceiros/widgets/botao-quer-ser-parceiro/botao_quer_ser_parceiro_controller.dart';
import 'presenter/widgets/parceiros/widgets/logo-parceiros/logo_parceiros_controller.dart';
import 'presenter/widgets/parceiros/parceiros_controller.dart';
import 'presenter/widgets/cases-brasileiros/cases_brasileiros_controller.dart';
import 'presenter/widgets/cases-brasileiros/widgets/card-cases-brasileiros/card_cases_brasileiros_controller.dart';
import 'presenter/widgets/co-organizadores/co_organizadores_controller.dart';
import 'presenter/widgets/co-organizadores/widgets/card-co-organizadores/card-co-organizadores_controller.dart';
import 'presenter/widgets/cover/widgets/icones-redes-sociais/icones_redes_sociais_controller.dart';
import 'presenter/widgets/pacotes-brasileiros/pacotes_brasileiros_controller.dart';
import 'presenter/widgets/pacotes-brasileiros/widgets/card-my-package/card_my_package_controller.dart';
import 'presenter/widgets/pacotes-brasileiros/widgets/card-pacotes-brasileiros/card_pacotes_brasileiros_controller.dart';
import 'presenter/widgets/ultimos-meetups/widgets/card-ultimos-meetups/card_ultimos_meetups_controller.dart';
import 'presenter/widgets/cover/cover_controller.dart';
import 'presenter/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/home_page.dart';
import 'presenter/widgets/ultimos-meetups/ultimos_meetups_controller.dart';
import 'presenter/widgets/ultimos-videos/ultimos_videos_controller.dart';
import 'presenter/widgets/ultimos-videos/widgets/card-ultimos-videos/card_ultimos_videos_controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HomeController,

        //cover
        $CoverController,
        $SocialMembersNumbers,
        $SocialMembersNumbersRepository,
        $SocialMembersNumbersDataSource,
        $IconesRedesSociaisController,

        //Ultimos meetups
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
        $CardCasesBrasileirosController,
        $ParceirosController,
        $LogoParceirosController,
        $BotaoQuerSerParceiroController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
