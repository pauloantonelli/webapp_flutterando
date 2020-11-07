import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/social_members_numbers_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_social_members_numbers_repository.dart';
import 'package:flutterando/app/modules/home/infra/datasource/get_social_members_numbers_datasource.dart';

part 'get_social_members_numbers_repository.g.dart';

@Injectable()
class SocialMembersNumbersRepository
    implements ISocialMembersNumbersRepository {
  final ISocialMembersNumbersDataSource _dataSource;

  SocialMembersNumbersRepository(this._dataSource);
  Future<
      Either<NullDataSourceErrorSocialMembersNumbers,
          List<SocialMembersNumbersEntity>>> call() async {
    final result = await _dataSource.getSocialMembersDataSource();
    if (result == null) {
      return Left(NullDataSourceErrorSocialMembersNumbers());
    }
    return Right(result);
  }
}
