import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/co_organizer_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_co_organizers_datasource.dart';

part 'get_co_organizers_datasource.g.dart';

@Injectable()
class GetCoOrganizersDataSource implements IGetCoOrganizersDataSource {
  final socialMock = {
    'data': [
      {
        'co-organizers': [
          {
            'organizer-title': 'Jacob Moura',
            'organizer-subtitle': 'Founder',
            'image':
                'https://media-exp1.licdn.com/dms/image/C5603AQEY5lkNHizZsw/profile-displayphoto-shrink_200_200/0?e=1610582400&v=beta&t=YhgvRZkyw4oLMd_nbqh3q2sLvXUz1MJamLtYZ6IXr4A',
            'organizer-link': 'https://www.linkedin.com/in/jacob-moura/',
          },
          {
            'organizer-title': 'Matheus Perez',
            'organizer-subtitle': 'Founder',
            'image':
                'https://media-exp1.licdn.com/dms/image/C4D03AQEhK53GsNY-LQ/profile-displayphoto-shrink_200_200/0?e=1610582400&v=beta&t=V4eG-wJ_5h59UerhyGhsIAZDvjf1N9p96zI3bRt8aXw',
            'organizer-link': 'https://www.linkedin.com/in/matheusperez/',
          },
          {
            'organizer-title': 'Vilson Blanco Dauinheimer',
            'organizer-subtitle': 'Co-organizer',
            'image':
                'https://media-exp1.licdn.com/dms/image/C4D03AQHdymoBuUGFsg/profile-displayphoto-shrink_200_200/0?e=1610582400&v=beta&t=XMVd-buQgX4ZSZd42c1PfeffwLkEq7t4_-0hUHgvMDE',
            'organizer-link': 'https://www.linkedin.com/in/bwolfdev/',
          },
          {
            'organizer-title': 'Alvaro Vasconcelos',
            'organizer-subtitle': 'Co-organizer',
            'image':
                'https://media-exp1.licdn.com/dms/image/C4E03AQHrXvT7weby7g/profile-displayphoto-shrink_200_200/0?e=1610582400&v=beta&t=ZOB6yjtzj34A5CyL6SoTt15wWDQYIVzzFLtrnARzmuY',
            'organizer-link': 'https://www.linkedin.com/in/vasconcelosdev/',
          },
          {
            'organizer-title': 'Kelven Galvão',
            'organizer-subtitle': 'Co-organizer',
            'image':
                'https://media-exp1.licdn.com/dms/image/C4E03AQE4PjEGG7h4UQ/profile-displayphoto-shrink_200_200/0?e=1610582400&v=beta&t=M1i-TuC1aXa-wCctJKDKYfaGiAvOkutCaHFdwq9UlX0',
            'organizer-link': 'https://www.linkedin.com/in/irvine5k/',
          },
          {
            'organizer-title': 'David Araujo',
            'organizer-subtitle': 'Co-organizer',
            'image':
                'https://media-exp1.licdn.com/dms/image/C4E03AQGwMA9LcHq6Pw/profile-displayphoto-shrink_200_200/0?e=1610582400&v=beta&t=5twNAUTJ0xsVfFmbi4ulSIv7X41fDVcag0M0EsuL1O0',
            'organizer-link': 'https://www.linkedin.com/in/davidsdearaujo/',
          },
          {
            'organizer-title': 'Jessica Mariane Pereira',
            'organizer-subtitle': 'Co-organizer',
            'image':
                'https://media-exp1.licdn.com/dms/image/C5603AQG_fAe78FavuA/profile-displayphoto-shrink_200_200/0?e=1610582400&v=beta&t=YrmXkucAXSV4ofFGl54-4F2XmXJIU_X1a9PlRCHo0GI',
            'organizer-link':
                'https://www.linkedin.com/in/jessica-mariane-pereira-dev/',
          },
          {
            'organizer-title': 'Paulo Antonelli',
            'organizer-subtitle': 'Co-organizer',
            'image':
                'https://media-exp1.licdn.com/dms/image/C5603AQE-nJx-W4g2Zg/profile-displayphoto-shrink_200_200/0?e=1610582400&v=beta&t=OrORlWYDtJolU2eIzYAAOy-bt8ZNNItYIdtXwBP6suU',
            'organizer-link': 'https://www.linkedin.com/in/pauloantonelli/',
          },
        ],
      }
    ]
  };

  @override
  Future<List<CoOrganizerEntity>> getCoOrganizers() async {
    final coOrganizersList = socialMock['data'][0]['co-organizers'];
    var organizersList = new List<CoOrganizerEntity>.generate(
      coOrganizersList.length,
      (index) => CoOrganizerEntity(
        name: coOrganizersList[index]['organizer-title'],
        title: coOrganizersList[index]['organizer-subtitle'],
        avatarSrcImage: coOrganizersList[index]['image'],
        linkedinLink: coOrganizersList[index]['organizer-link'],
      ),
    );
    return organizersList;
  }
}
