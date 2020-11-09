import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_brasilian_packages_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_brasilian_packages_datasource.dart';

part 'get_brasilian_packages_repository.g.dart';

@Injectable()
class GetBrasilianPackagesRepository
    implements IGetBrasilianPackagesRepository {
  final IGetBrasilianPackagesDataSource _dataSource;

  GetBrasilianPackagesRepository(this._dataSource);
  Future<
      Either<NullDataSourceErrorBrasilianPackages,
          List<BrasilianPackagesEntity>>> call() async {
    final result = await _dataSource.getBrasilianPackages();
    if (result == null) {
      return Left(NullDataSourceErrorBrasilianPackages());
    }
    return Right(result);
  }
}
