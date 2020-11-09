import 'package:flutterando/app/modules/home/domain/usecase/brasilian_packages.dart';
import 'package:flutterando/app/modules/home/external/datasource/mock/brasilian_cases_datasource.dart';
import 'package:flutterando/app/modules/home/external/datasource/mock/brasilian_packages_datasource.dart';
import 'package:flutterando/app/modules/home/external/datasource/mock/get_co_organizers_datasource.dart';
import 'package:flutterando/app/modules/home/external/datasource/mock/get_last_meetups_datasource.dart';
import 'package:flutterando/app/modules/home/external/datasource/mock/get_last_videos_channel_datasource.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_co_organizers.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_last_meetups.dart';
import 'package:flutterando/app/modules/home/domain/usecase/get_last_videos_channel.dart';
import 'package:flutterando/app/modules/home/infra/respository/brasilian_cases_repository.dart';
import 'package:flutterando/app/modules/home/infra/respository/brasilian_packages_repository.dart';
import 'package:flutterando/app/modules/home/infra/respository/get_co_organizers_repository.dart';
import 'package:flutterando/app/modules/home/infra/respository/get_last_meetups_repository.dart';
import 'package:flutterando/app/modules/home/infra/respository/get_last_videos_channel_repository.dart';
import 'domain/usecase/brasilian_cases.dart';
import 'external/datasource/mock/get_social_members_numbers_datasource.dart';
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

        // cover
        $CoverController,
        $IconesRedesSociaisController,
        $SocialMembersNumbers,
        $SocialMembersNumbersRepository,
        $SocialMembersNumbersDataSource,

        // ultimos meetups
        $UltimosMeetupsController,
        $CardUltimosMeetupsController,
        $GetLastMeetups,
        $GetLastMeetupsRepository,
        $GetLastMeetupsDataSource,

        // ultimos videos
        $CardUltimosVideosController,
        $UltimosVideosController,
        $GetLastVideosChannel,
        $GetLastVideosChannelRepository,
        $GetLastVideosChannelDataSource,

        // co-organizadores
        $CoOrganizadoresController,
        $CardCoOrganizadoresController,
        $GetCoOrganizers,
        $GetCoOrganizersRepository,
        $GetCoOrganizersDataSource,

        // pacotes brasileiros
        $PacotesBrasileirosController,
        $CardPacotesBrasileirosController,
        $CardMyPackageController,

        // cases brasileiros
        $CasesBrasileirosController,
        $CardCasesBrasileirosController,
        $GetBrasilianPackages,
        $GetBrasilianPackagesRepository,
        $GetBrasilianPackagesDataSource,

        // parceiros
        $ParceirosController,
        $LogoParceirosController,
        $BotaoQuerSerParceiroController,
        $GetBrasilianCases,
        $GetBrasilianCasesRepository,
        $GetBrasilianCasesDataSource
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
