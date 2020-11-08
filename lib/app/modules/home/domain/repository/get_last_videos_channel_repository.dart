import 'package:dartz/dartz.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_videos_channel_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

abstract class IGetLastVideosChannelRepository {
  Future<Either<ErrorGetLastVideosChannel, List<LastVideosChannelEntity>>>
      call();
}
