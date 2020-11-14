import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/brasilian_packages_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/send_brasilian_packages_repository.dart';
import '../error/error.dart';

part 'send_brasilian_packages.g.dart';

abstract class ISendBrasilianPackages {
  Future<Either<ErrorSendBrasilianPackages, bool>> sendPackage(
      BrasilianPackagesEntity model);
}

@Injectable()
class SendBrasilianPackages implements ISendBrasilianPackages {
  final ISendBrasilianPackagesRepository repository;

  SendBrasilianPackages(this.repository);

  @override
  Future<Either<ErrorSendBrasilianPackages, bool>> sendPackage(
      BrasilianPackagesEntity model) async {
    if (model == null) {
      return Left(NullErrorSendBrasilianPackages(
          'preencha todos os dados para submeter'));
    }
    final result = await repository(model);
    return result;
  }
}
