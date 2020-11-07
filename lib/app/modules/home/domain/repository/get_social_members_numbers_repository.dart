import 'package:dartz/dartz.dart';
import 'package:flutterando/app/modules/home/domain/entity/social_members_numbers_entity.dart';
import 'package:flutterando/app/modules/home/domain/error/error.dart';

abstract class ISocialMembersNumbersRepository {
  Future<Either<ErrorSocialMembersNumbers, List<SocialMembersNumbersEntity>>>
      call();
}
