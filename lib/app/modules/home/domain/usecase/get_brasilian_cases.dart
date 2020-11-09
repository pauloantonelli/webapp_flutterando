import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_cases_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_brasilian_cases_repository.dart';

part 'get_brasilian_cases.g.dart';

abstract class IGetBrasilianCases {
  Future<Either<ErrorBrasilianCases, List<BrasilianCasesEntity>>>
      getBrasilianCases();
}

@Injectable()
class GetBrasilianCases implements IGetBrasilianCases {
  final IGetBrasilianCasesRepository _repository;

  GetBrasilianCases(this._repository);

  @override
  Future<Either<ErrorBrasilianCases, List<BrasilianCasesEntity>>>
      getBrasilianCases() async {
    final result = await this._repository();
    if (result == null) {
      return Left(NullErrorBrasilianCases());
    }
    return result;
  }
}
