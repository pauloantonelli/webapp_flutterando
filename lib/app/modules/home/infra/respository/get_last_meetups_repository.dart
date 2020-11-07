import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_meetups_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_last_meetups_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_last_meetups_datasource.dart';

part 'get_last_meetups_repository.g.dart';

@Injectable()
class GetLastMeetupsRepository implements IGetLastMeetupsRepository {
  final IGetLastMeetupsDataSource _dataSource;

  GetLastMeetupsRepository(this._dataSource);
  Future<Either<NullDataSourceErrorGetLastMeetups, List<LastMeetUpsEntity>>>
      call() async {
    final result = await _dataSource.getLastMeetups();
    if (result == null) {
      return Left(NullDataSourceErrorGetLastMeetups());
    }
    return Right(result);
  }
}
