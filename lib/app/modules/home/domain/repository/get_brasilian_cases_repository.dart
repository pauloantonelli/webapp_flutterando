import 'package:dartz/dartz.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_cases_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

abstract class IGetBrasilianCasesRepository {
  Future<Either<ErrorBrasilianCases, List<BrasilianCasesEntity>>> call();
}
