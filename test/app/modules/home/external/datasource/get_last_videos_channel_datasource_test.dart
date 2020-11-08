import 'package:flutter_test/flutter_test.dart';
import 'package:flutterando/app/modules/home/datasource/mock/get_last_videos_channel_datasource.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_videos_channel_entity.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_last_videos_channel_datasource.dart';

main() {
  final IGetLastVideosChannelDataSource dataSource =
      new GetLastVideosChannelDataSource();

  group('GetLastVideosChannelDataSource Test', () {
    test('deve retornar a lista dos ultimos videos', () async {
      final result = await dataSource.getLastVideosChannel();
      expect(result, isA<List<LastVideosChannelEntity>>());
    });
  });
}
