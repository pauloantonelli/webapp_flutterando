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
                'https://lh3.googleusercontent.com/proxy/1PNeV0eBjCWoMPApH4kZvcs02j-1MRBVNraHnjijkC244h-Y2mUAR4eEjorHjTFWtA1I6RyMZjiJm7bYiUn9sm5rkWgC2iZEUC0DoFJotcdqzXnurDgzt2RyXaVzgpcmtWIDzRw_pMLgBKLo3wTqbw',
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