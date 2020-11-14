import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/parceiros_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_parceiros_datasource.dart';

part 'get_parceiros_datasource.g.dart';

@Injectable()
class GetParceirosDataSource implements IGetParceirosDataSource {
  final parceirosMock = {
    'data': [
      {
        'partners': [
          {
            'title': 'Instituro Adventista de Tecnologia',
            'image':
                'https://yt3.ggpht.com/a/AATXAJxIp_-9i_AOYPaGzC24Y7YmHsw6FBm7TxqBC_Qo=s900-c-k-c0x00ffffff-no-rj',
          },
          {
            'title': 'F-Team | Development Expertise',
            'image':
                'https://media-exp1.licdn.com/dms/image/C4D0BAQFsnlhwb_sVZQ/company-logo_200_200/0?e=1613001600&v=beta&t=r8q-yV-h2r5Y1OkVwRXG7SZ6zxA8gV8epvRuJaT8oi4',
          },
        ],
      }
    ]
  };

  @override
  Future<List<ParceirosEntity>> getParceiros() async {
    final parceirosListData = parceirosMock['data'][0]['partners'];
    var parceirosList = new List<ParceirosEntity>.generate(
      parceirosListData.length,
      (index) => ParceirosEntity(
        title: parceirosListData[index]['title'],
        srcImage: parceirosListData[index]['image'],
      ),
    );
    return parceirosList;
  }
}
