import 'package:flutterando/app/modules/home/domain/entity/social_members_numbers_entity.dart';

abstract class ISocialMembersNumbersDataSource {
  Future<List<SocialMembersNumbersEntity>> getSocialMembersDataSource();
}
