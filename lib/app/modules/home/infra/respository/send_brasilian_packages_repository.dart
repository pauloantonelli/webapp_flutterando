import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutterando/app/modules/home/domain/repository/send_brasilian_packages_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/send_brasilian_packages_datasource.dart';

part 'send_brasilian_packages_repository.g.dart';

@Injectable()
class SendBrasilianPackagesRepository
    implements ISendBrasilianPackagesRepository {
  final ISendBrasilianPackagesDataSource dataSource;

  SendBrasilianPackagesRepository(this.dataSource);

  @override
  Future<Either<NullDataSourceErrorSendBrasilianPackages, bool>> call(
      BrasilianPackagesEntity model) async {
    final result = await dataSource.sendPackage(model);
    if (result == null) {
      return Left(NullDataSourceErrorSendBrasilianPackages());
    }
    return Right(result);
  }
}
