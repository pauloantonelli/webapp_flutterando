import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_cases_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/brasilian_cases_datasource.dart';

part 'brasilian_cases_datasource.g.dart';

@Injectable()
class GetBrasilianCasesDataSource implements IGetBrasilianCasesDataSource {
  final brasilianCasesMock = {
    'data': [
      {
        'packages': [
          {
            'image':
                'https://s2.glbimg.com/gYsZ48gUX7YLOGKyVg2ZN1Rkc5U=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_08fbf48bc0524877943fe86e43087e7a/internal_photos/bs/2018/J/C/F7pnkmQqWM20q7DfR93Q/newapp-01.png',
            'title': 'Nubank',
            'description':
                "O Nubank anunciou recentemente que está utilizando o Flutter em que suas aplicações. No link abaixo você vê mais sobre o projeto.",
            'link':
                'https://comunidade.nubank.com.br/t/migracao-para-o-flutter/52284',
          },
          {
            'image':
                'https://blog.monetus.com.br/wp-content/uploads/2019/08/BancoBS2.png',
            'title': 'Banco BS2',
            'description':
                "Fintechs estão optando por usar Flutter devido as suas facilidades em relação a pagamentos. Veja como o banco BS2 está trabalhando.",
            'link':
                'https://luizmarcus.com/android/empresas-que-usam-flutter-no-brasil/',
          },
          {
            'image':
                'https://globoads.globo.com/assets/imgs/home/tela-aviso-globo-ads-3.jpg',
            'title': 'Globo',
            'description':
                "A Globo está utilizando Flutter em sua aplicação Globo Ads, confira mais nesse link como estão utilizando Flutter",
            'link':
                'https://blogs.oglobo.globo.com/ronald-villardo/post/twitter-ja-era-negocio-agora-o-flutter-177131.html',
          },
        ],
      }
    ]
  };

  @override
  Future<List<BrasilianCasesEntity>> getBrasilianCases() async {
    final brasilianCasesList = brasilianCasesMock['data'][0]['packages'];
    var casesList = new List<BrasilianCasesEntity>.generate(
      brasilianCasesList.length,
      (index) => BrasilianCasesEntity(
        srcImage: brasilianCasesList[index]['image'],
        title: brasilianCasesList[index]['title'],
        description: brasilianCasesList[index]['description'],
        externalLink: brasilianCasesList[index]['link'],
      ),
    );
    return casesList;
  }
}
