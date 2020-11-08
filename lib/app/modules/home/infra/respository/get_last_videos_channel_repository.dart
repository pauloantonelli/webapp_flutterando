import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_videos_channel_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_last_videos_channel_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_last_videos_channel_datasource.dart';

part 'get_last_videos_channel_repository.g.dart';

@Injectable()
class GetLastVideosChannelRepository
    implements IGetLastVideosChannelRepository {
  final IGetLastVideosChannelDataSource _dataSource;

  GetLastVideosChannelRepository(this._dataSource);
  Future<Either<ErrorGetLastVideosChannel, List<LastVideosChannelEntity>>>
      call() async {
    final result = await _dataSource.getLastVideosChannel();
    if (result == null) {
      return Left(NullDataSourceErrorGetLastVideosChannel());
    }
    return Right(result);
  }
}
