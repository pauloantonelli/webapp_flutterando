import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_videos_channel_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_last_videos_channel_repository.dart';

part 'get_last_videos_channel.g.dart';

abstract class IGetLastVideosChannel {
  Future<Either<ErrorGetLastVideosChannel, List<LastVideosChannelEntity>>>
      getLastVideos();
}

@Injectable()
class GetLastVideosChannel implements IGetLastVideosChannel {
  final IGetLastVideosChannelRepository _repository;

  GetLastVideosChannel(this._repository);

  @override
  Future<Either<ErrorGetLastVideosChannel, List<LastVideosChannelEntity>>>
      getLastVideos() async {
    final result = await this._repository();
    if (result == null) {
      return Left(NullErrorGetLastVideosChannel());
    }
    return result;
  }
}
