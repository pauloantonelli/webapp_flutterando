import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterando/app/modules/home/domain/entity/social_members_numbers_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';
import 'package:flutterando/app/modules/home/domain/repository/get_social_members_numbers_repository.dart';

part 'get_social_members_numbers.g.dart';

abstract class ISocialMembersNumbers {
  Future<Either<ErrorSocialMembersNumbers, List<SocialMembersNumbersEntity>>>
      getSocialMembersNumbers();
}

@Injectable()
class SocialMembersNumbers implements ISocialMembersNumbers {
  final ISocialMembersNumbersRepository _repository;

  SocialMembersNumbers(this._repository);

  @override
  Future<Either<ErrorSocialMembersNumbers, List<SocialMembersNumbersEntity>>>
      getSocialMembersNumbers() async {
    final result = await this._repository();
    if (result == null) {
      return Left(NullErrorSocialMembersNumbers());
    }
    return result;
  }
}
