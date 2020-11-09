import 'package:dartz/dartz.dart';
import 'package:flutterando/app/modules/home/domain/entity/parceiros_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

abstract class IGetParceirosRepository {
  Future<Either<ErrorParceiros, List<ParceirosEntity>>> call();
}
