import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_videos_channel_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_last_videos_channel_datasource.dart';

part 'get_last_videos_channel_datasource.g.dart';

@Injectable()
class GetLastVideosChannelDataSource
    implements IGetLastVideosChannelDataSource {
  final videosMock = {
    'data': [
      {
        'last-videos-channel': [
          {
            'videos-channel-title':
                'Curso de Flutter #30 - [Conversor de moedas] Desenhando a View',
            'videos-channel-subtitle': 'há 1 dia',
            'image':
                'https://i.ytimg.com/vi/XeUiJJN0vsE/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCOBHo8OuIMJ0nTm8_qR9Qgv04cHQ',
            'videos-channel-link':
                'https://www.youtube.com/watch?v=T9PWDDQNyDc&list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB&index=30',
          },
          {
            'videos-channel-title':
                'Curso de Flutter #31 - [Conversor de moedas] Alinhando os itens da View',
            'videos-channel-subtitle': 'há 1 dia',
            'image':
                'https://i.ytimg.com/vi/XeUiJJN0vsE/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCOBHo8OuIMJ0nTm8_qR9Qgv04cHQ',
            'videos-channel-link':
                'https://www.youtube.com/watch?v=T9PWDDQNyDc&list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB&index=31',
          },
          {
            'videos-channel-title':
                'Curso de Flutter #32 - [Conversor de moedas] Componentizando a view',
            'videos-channel-subtitle': 'há 1 dia',
            'image':
                'https://i.ytimg.com/vi/XeUiJJN0vsE/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCOBHo8OuIMJ0nTm8_qR9Qgv04cHQ',
            'videos-channel-link':
                'https://www.youtube.com/watch?v=T9PWDDQNyDc&list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB&index=32',
          },
          {
            'videos-channel-title':
                'Curso de Flutter #33 - [Conversor de moedas] Criando o controller',
            'videos-channel-subtitle': 'há 1 dia',
            'image':
                'https://i.ytimg.com/vi/XeUiJJN0vsE/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCOBHo8OuIMJ0nTm8_qR9Qgv04cHQ',
            'videos-channel-link':
                'https://www.youtube.com/watch?v=T9PWDDQNyDc&list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB&index=32',
          },
          {
            'videos-channel-title':
                'Curso de Flutter #34 - [Conversor de moedas] Testando o Controller',
            'videos-channel-subtitle': 'há 1 dia',
            'image':
                'https://i.ytimg.com/vi/XeUiJJN0vsE/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCOBHo8OuIMJ0nTm8_qR9Qgv04cHQ',
            'videos-channel-link':
                'https://www.youtube.com/watch?v=T9PWDDQNyDc&list=PLlBnICoI-g-d-J57QIz6Tx5xtUDGQdBFB&index=32',
          },
        ],
      }
    ]
  };

  @override
  Future<List<LastVideosChannelEntity>> getLastVideosChannel() async {
    final videosChannelList = videosMock['data'][0]['last-videos-channel'];
    var videosList = new List<LastVideosChannelEntity>.generate(
      videosChannelList.length,
      (index) => LastVideosChannelEntity(
        title: videosChannelList[index]['videos-channel-title'],
        subtitle: videosChannelList[index]['videos-channel-subtitle'],
        cardSrcImage: videosChannelList[index]['image'],
        videoLink: videosChannelList[index]['videos-channel-link'],
      ),
    );
    return videosList;
  }
}
