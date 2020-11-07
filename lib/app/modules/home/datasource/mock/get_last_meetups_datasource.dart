import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_meetups_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_last_meetups_datasource.dart';

part 'get_last_meetups_datasource.g.dart';

@Injectable()
class GetLastMeetupsDataSource implements IGetLastMeetupsDataSource {
  final socialMock = {
    'data': [
      {
        'last-meetups': [
          {
            'meetup-title': 'Flutterando Meetup | 15º Edição',
            'meetup-subtitle':
                'quinta-feira, 10 de outubro de 2020 19:00 até 21:30',
            'image':
                'https://i0.wp.com/onebitcode.com/wp-content/uploads/2016/10/post-open-source-01-1-1.jpg?w=1280&ssl=1',
            'meetup-link': 'https://www.meetup.com/pt-BR/Flutterando',
          },
          {
            'meetup-title': 'Flutterando Meetup | 14º Edição',
            'meetup-subtitle':
                'quinta-feira, 15 de setembro de 2020 19:00 até 20:00',
            'image': 'https://i.ytimg.com/vi/yRHl4Gy07PI/maxresdefault.jpg',
            'meetup-link': 'https://www.meetup.com/pt-BR/Flutterando',
          },
          {
            'meetup-title': 'Flutter LATAM Conf 2ª Edição 2020',
            'meetup-subtitle':
                'quinta-feira, 26 de novembro de 2020 19:00 até 20:30',
            'image':
                'https://clovinn.com/wp-content/uploads/2020/04/unnamed.png',
            'meetup-link': 'https://www.meetup.com/pt-BR/Flutterando',
          },
          {
            'meetup-title': 'Flutter Talks | 2019',
            'meetup-subtitle':
                'quinta-feira, 03 de junho de 2020 19:00 até 22:00',
            'image':
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSCsbMUhugN5mJ6j1jOGuh9OKlAg00DkMxtdQ&usqp=CAU',
            'meetup-link': 'https://www.meetup.com/pt-BR/Flutterando',
          },
        ],
      }
    ]
  };

  @override
  Future<List<LastMeetUpsEntity>> getLastMeetups() async {
    final socialMemberList = socialMock['data'][0]['last-meetups'];
    var socialList = new List<LastMeetUpsEntity>.generate(
      socialMemberList.length,
      (index) => LastMeetUpsEntity(
        title: socialMemberList[index]['meetup-title'],
        subtitle: socialMemberList[index]['meetup-subtitle'],
        cardSrcImage: socialMemberList[index]['image'],
        externalLink: socialMemberList[index]['meetup-link'],
      ),
    );
    return socialList;
  }
}
