import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/co_organizer_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_co_organizers_repository.dart';

part 'get_co_organizers.g.dart';

abstract class IGetCoOrganizers {
  Future<Either<ErrorCoOrganizer, List<CoOrganizerEntity>>> getCoOrganizers();
}

@Injectable()
class GetCoOrganizers implements IGetCoOrganizers {
  final IGetCoOrganizersRepository _repository;

  GetCoOrganizers(this._repository);

  @override
  Future<Either<ErrorCoOrganizer, List<CoOrganizerEntity>>>
      getCoOrganizers() async {
    final result = await this._repository();
    if (result == null) {
      return Left(NullErrorCoOrganizer());
    }
    return result;
  }
}
