import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/social_members_numbers_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_social_members_numbers_datasource.dart';

part 'get_social_members_numbers_datasource.g.dart';

@Injectable()
class SocialMembersNumbersDataSource
    implements ISocialMembersNumbersDataSource {
  final socialMock = {
    'data': [
      {
        'sociais': [
          {
            'logo':
                'https://muitocurioso.org/wp-content/uploads/2019/05/youtube-logo.png',
            'seguidores': 30.0
          },
          {
            'logo':
                'https://i.pinimg.com/236x/5d/36/d5/5d36d57c4bfb5da2300ec333595166af.jpg',
            'seguidores': 11.5
          },
          {
            'logo':
                'https://logodownload.org/wp-content/uploads/2014/09/twitter-logo-2-1.png',
            'seguidores': 3.5
          },
          {
            'logo':
                'https://banner2.cleanpng.com/20190602/okw/kisspng-discord-computer-icons-logo-portable-network-graph-discord-logo-16-x16-png-clipart-download-5cf46a10658692.3312996115595218084159.jpg',
            'seguidores': 3.1
          }
        ],
      }
    ]
  };

  @override
  Future<List<SocialMembersNumbersEntity>> getSocialMembersDataSource() async {
    final socialMemberList = socialMock['data'][0]['sociais'];
    var socialList = new List<SocialMembersNumbersEntity>.generate(
        socialMemberList.length,
        (index) => SocialMembersNumbersEntity(
            srcLogo: socialMemberList[index]['logo'],
            totalMembers: socialMemberList[index]['seguidores']));
    return socialList;
  }
}
