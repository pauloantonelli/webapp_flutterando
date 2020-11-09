import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/parceiros_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_parceiros_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_parceiros_datasource.dart';

part 'get_parceiros_repository.g.dart';

@Injectable()
class GetParceirosRepository implements IGetParceirosRepository {
  final IGetParceirosDataSource _dataSource;

  GetParceirosRepository(this._dataSource);
  Future<Either<ErrorParceiros, List<ParceirosEntity>>> call() async {
    final result = await _dataSource.getParceiros();
    if (result == null) {
      return Left(NullDataSourceErrorParceiros());
    }
    return Right(result);
  }
}
