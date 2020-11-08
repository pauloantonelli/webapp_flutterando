import 'package:dartz/dartz.dart';
import 'package:flutterando/app/modules/home/domain/entity/last_meetups_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

abstract class IGetLastMeetupsRepository {
  Future<Either<ErrorGetLastMeetups, List<LastMeetUpsEntity>>> call();
}
