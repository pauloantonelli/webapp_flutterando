import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_brasilian_packages_repository.dart';

part 'get_brasilian_packages.g.dart';

abstract class IGetBrasilianPackages {
  Future<Either<ErrorBrasilianPackages, List<BrasilianPackagesEntity>>>
      getBrasilianPackages();
}

@Injectable()
class GetBrasilianPackages implements IGetBrasilianPackages {
  final IGetBrasilianPackagesRepository _repository;

  GetBrasilianPackages(this._repository);

  @override
  Future<Either<ErrorBrasilianPackages, List<BrasilianPackagesEntity>>>
      getBrasilianPackages() async {
    final result = await this._repository();
    if (result == null) {
      return Left(NullErrorBrasilianPackages());
    }
    return result;
  }
}
