import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_meetups_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_last_meetups_repository.dart';

part 'get_last_meetups.g.dart';

abstract class IGetLastMeetups {
  Future<Either<ErrorGetLastMeetups, List<LastMeetUpsEntity>>> getLastMeetups();
}

@Injectable()
class GetLastMeetups implements IGetLastMeetups {
  final IGetLastMeetupsRepository _repository;

  GetLastMeetups(this._repository);

  @override
  Future<Either<ErrorGetLastMeetups, List<LastMeetUpsEntity>>>
      getLastMeetups() async {
    final result = await this._repository();
    if (result == null) {
      return Left(NullErrorGetLastMeetups());
    }
    return result;
  }
}
