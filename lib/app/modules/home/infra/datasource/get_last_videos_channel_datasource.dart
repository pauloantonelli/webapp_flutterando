import 'package:flutterando/app/modules/home/domain/entity/last_videos_channel_entity.dart';

abstract class IGetLastVideosChannelDataSource {
  Future<List<LastVideosChannelEntity>> getLastVideosChannel();
}
