import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/co_organizer_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_co_organizers_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_co_organizers_datasource.dart';

part 'get_co_organizers_repository.g.dart';

@Injectable()
class GetCoOrganizersRepository implements IGetCoOrganizersRepository {
  final IGetCoOrganizersDataSource _dataSource;

  GetCoOrganizersRepository(this._dataSource);
  Future<Either<NullDataSourceErrorCoOrganizer, List<CoOrganizerEntity>>>
      call() async {
    final result = await _dataSource.getCoOrganizers();
    if (result == null) {
      return Left(NullDataSourceErrorCoOrganizer());
    }
    return Right(result);
  }
}
