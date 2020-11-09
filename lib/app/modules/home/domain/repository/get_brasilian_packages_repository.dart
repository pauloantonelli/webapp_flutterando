import 'package:dartz/dartz.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

abstract class IGetBrasilianPackagesRepository {
  Future<Either<ErrorBrasilianPackages, List<BrasilianPackagesEntity>>> call();
}
