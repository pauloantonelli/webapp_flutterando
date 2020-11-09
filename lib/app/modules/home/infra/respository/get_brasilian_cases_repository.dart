import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_cases_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_brasilian_cases_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_brasilian_cases_datasource.dart';

part 'get_brasilian_cases_repository.g.dart';

@Injectable()
class GetBrasilianCasesRepository implements IGetBrasilianCasesRepository {
  final IGetBrasilianCasesDataSource _dataSource;

  GetBrasilianCasesRepository(this._dataSource);
  Future<Either<ErrorBrasilianCases, List<BrasilianCasesEntity>>> call() async {
    final result = await _dataSource.getBrasilianCases();
    if (result == null) {
      return Left(NullDataSourceErrorBrasilianCases());
    }
    return Right(result);
  }
}
