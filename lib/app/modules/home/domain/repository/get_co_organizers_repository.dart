import 'package:dartz/dartz.dart';
import 'package:flutterando/app/modules/home/domain/entity/co_organizer_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

abstract class IGetCoOrganizersRepository {
  Future<Either<ErrorCoOrganizer, List<CoOrganizerEntity>>> call();
}
