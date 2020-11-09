import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/parceiros_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_parceiros_repository.dart';

part 'get_parceiros.g.dart';

abstract class IGetParceiros {
  Future<Either<ErrorParceiros, List<ParceirosEntity>>> getParceiros();
}

@Injectable()
class GetParceiros implements IGetParceiros {
  final IGetParceirosRepository _repository;

  GetParceiros(this._repository);

  @override
  Future<Either<ErrorParceiros, List<ParceirosEntity>>> getParceiros() async {
    final result = await this._repository();
    if (result == null) {
      return Left(NullErrorParceiros());
    }
    return result;
  }
}
